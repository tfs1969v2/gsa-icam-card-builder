#!/bin/sh
#
# Just uncomment everything between ## Card to make a single card.
#
. ./rename.sh
. ./revoke.sh

cp -p ../cards/ICAM_Card_Objects/ICAM_CA_and_Signer/*.p12 data

## Card 39
#sh mkcert.sh -w -b -s ICAM_Test_Card_PIV-I_Auth_Fed_SP_800-73-4 -i ICAM_Test_Card_PIV-I_Signing_CA_-_gold_gen3 -n 39 -t pivi-auth
#sh mkcert.sh -w -b -s ICAM_Test_Card_PIV-I_Dig_Sig_Fed_SP_800-73-4 -i ICAM_Test_Card_PIV-I_Signing_CA_-_gold_gen3 -n 39 -t pivi-dig-sig
#sh mkcert.sh -w -b -s ICAM_Test_Card_PIV-I_Key_Mgmt_Fed_SP_800-73-4 -i ICAM_Test_Card_PIV-I_Signing_CA_-_gold_gen3 -n 39 -t pivi-key-mgmt
#sh mkcert.sh -w -b -s ICAM_Test_Card_PIV-I_Card_Auth_Fed_SP_800-73-4 -i ICAM_Test_Card_PIV-I_Signing_CA_-_gold_gen3 -n 39 -t pivi-card-auth
#DEST="../cards/ICAM_Card_Objects/39_Golden_FIPS_201-2_Fed_PIV-I"
#cp -p data/ICAM_Test_Card_PIV-I*Fed_SP_800-73-4.p12 "$DEST"
#cp -p data/pem/ICAM_Test_Card_PIV-I*Fed_SP_800-73-4.crt "$DEST"
#renameIn "$DEST" 1 1
#
## Card 45
#sh mkcert.sh -w -b -s ICAM_Test_Card_PIV_Auth_SP_800-73-4_OCSP_Invalid_Signature -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen3 -n 45 -t piv-auth
#sh mkcert.sh -w -b -s ICAM_Test_Card_PIV_Dig_Sig_SP_800-73-4_OCSP_Invalid_Signature -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen3 -n 45 -t piv-dig-sig
#sh mkcert.sh -w -b -s ICAM_Test_Card_PIV_Key_Mgmt_SP_800-73-4_OCSP_Invalid_Signature -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen3 -n 45 -t piv-key-mgmt
#sh mkcert.sh -w -b -s ICAM_Test_Card_PIV_Card_Auth_SP_800-73-4_OCSP_Invalid_Signature -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen3 -n 45 -t piv-card-auth
#DEST="../cards/ICAM_Card_Objects/45_OCSP_Invalid_Signature"
#cp -p data/ICAM_Test_Card_PIV_*SP_800-73-4_OCSP_Invalid_Signature.p12 "$DEST"
#cp -p data/pem/ICAM_Test_Card_PIV_*SP_800-73-4_OCSP_Invalid_Signature.crt "$DEST"
#renameIn "$DEST" 1 1
#
## Card 54
#sh mkcert.sh -w -b -s ICAM_Test_Card_PIV-I_Auth_NFI_SP_800-73-4 -i ICAM_Test_Card_PIV-I_Signing_CA_-_gold_gen3 -n 54 -t pivi-auth
#sh mkcert.sh -w -b -s ICAM_Test_Card_PIV-I_Dig_Sig_NFI_SP_800-73-4 -i ICAM_Test_Card_PIV-I_Signing_CA_-_gold_gen3 -n 54 -t pivi-dig-sig
#sh mkcert.sh -w -b -s ICAM_Test_Card_PIV-I_Key_Mgmt_NFI_SP_800-73-4 -i ICAM_Test_Card_PIV-I_Signing_CA_-_gold_gen3 -n 54 -t pivi-key-mgmt
#sh mkcert.sh -w -b -s ICAM_Test_Card_PIV-I_Card_Auth_NFI_SP_800-73-4 -i ICAM_Test_Card_PIV-I_Signing_CA_-_gold_gen3 -n 54 -t pivi-card-auth
#DEST="../cards/ICAM_Card_Objects/54_Golden_FIPS_201-2_NFI_PIV-I"
#cp -p data/ICAM_Test_Card_PIV-I_*NFI_SP_800-73-4.p12 "$DEST"
#cp -p data/pem/ICAM_Test_Card_PIV-I*NFI_SP_800-73-4.crt "$DEST"
#renameIn "$DEST" 1 1
#
## Card 55
#sh mkcert.sh -w -b -s ICAM_Test_Card_PIV_Auth_SP_800-73-4_Missing_SO -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen3 -n 55 -t piv-auth
#sh mkcert.sh -w -b -s ICAM_Test_Card_PIV_Dig_Sig_SP_800-73-4_Missing_SO -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen3 -n 55 -t piv-dig-sig
#sh mkcert.sh -w -b -s ICAM_Test_Card_PIV_Key_Mgmt_SP_800-73-4_Missing_SO -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen3 -n 55 -t piv-key-mgmt
#sh mkcert.sh -w -b -s ICAM_Test_Card_PIV_Card_Auth_SP_800-73-4_Missing_SO -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen3 -n 55 -t piv-card-auth
#DEST="../cards/ICAM_Card_Objects/55_FIPS_201-2_Missing_Security_Object"
#cp -p data/ICAM_Test_Card_PIV*SP_800-73-4_Missing_SO.p12 "$DEST"
#cp -p data/pem/ICAM_Test_Card_PIV*SP_800-73-4_Missing_SO.crt "$DEST"
#renameIn "$DEST" 1 1
#
## Gen1-2 OCSP valid signer using RSA 2048 (RSA 2048 CA)
#SUBJ=ICAM_Test_Card_PIV_OCSP_Valid_Signer_gen1-2
#sh mkcert.sh -b -s $SUBJ -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen1-2 -t piv-ocsp-valid-gen1-2 -r 2048 --cakey rsa2048 || exit $?
#DEST="../cards/ICAM_Card_Objects/ICAM_CA_and_Signer"
#cp -p data/$SUBJ.p12 "$DEST"
#cp -p data/pem/$SUBJ.crt "$DEST"
#
## OCSP valid signer using RSA 2048 (RSA 2048 CA)
#SUBJ=ICAM_Test_Card_PIV_OCSP_Valid_Signer_gen3 
#sh mkcert.sh -b -s $SUBJ -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen3 -t piv-ocsp-valid-gen3-rsa -r 2048 --cakey rsa2048 || exit $?
#DEST="../cards/ICAM_Card_Objects/ICAM_CA_and_Signer"
#cp -p data/$SUBJ.p12 "$DEST"
#cp -p data/pem/$SUBJ.crt "$DEST"
#
## Gen3 Secure Messaging Key Establishment using ECC P-256 with intermediate CVC (RSA 2048 CA)
#SUBJ=ICAM_Test_Card_PIV_RSA_Issued_Intermediate_CVC_Signer
#sh mkcert.sh -b -s $SUBJ -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen3 -t piv-content-signer-gen3-rsa -e prime256v1 -c rsa2048 || exit $?
#DEST="../cards/ICAM_Card_Objects/ICAM_CA_and_Signer"
#cp -p data/$SUBJ.p12 "$DEST"
#cp -p data/pem/$SUBJ.crt "$DEST"
#
## Gen3 Secure Messaging Key Establishment using ECC P-256 (ECC P-384 CA)
#SUBJ=ICAM_Test_Card_PIV_ECC_Issued_P-256_SM_Certificate_Signer_2
#sh mkcert.sh -b -s $SUBJ -i ICAM_Test_Card_PIV_P-384_Signing_CA_gold_gen3 -t piv-content-signer-gen3-p384 -e prime256v1 -c secp384r1 || exit $?
#DEST="../cards/ICAM_Card_Objects/ICAM_CA_and_Signer"
#cp -p data/$SUBJ.p12 "$DEST"
#cp -p data/pem/$SUBJ.crt "$DEST"
#
## OCSP Gen3 valid OCSP signer using ECC P-384 (ECC P-384)
#SUBJ=ICAM_Test_Card_PIV_OCSP_Valid_Signer_P384_gen3 
#sh mkcert.sh -b -s $SUBJ -i ICAM_Test_Card_PIV_P-384_Signing_CA_gold_gen3 -t piv-ocsp-valid-gen3-p384 -r 2048 --cakey secp384r1 || exit $?
#DEST="../cards/ICAM_Card_Objects/ICAM_CA_and_Signer"
#cp -p data/$SUBJ.p12 "$DEST"
#cp -p data/pem/$SUBJ.crt "$DEST"

## Gen3 Secure Messaging Key Establishment using ECC P-256 (ECC P-384 CA)
#SUBJ=ICAM_Test_Card_PIV_ECC_Issued_P-256_SM_Certificate_Signer_2
#sh mkcert.sh -b -s $SUBJ -i ICAM_Test_Card_PIV_P-384_Signing_CA_gold_gen3 -t piv-content-signer-gen3-p384 -e prime256v1 -c secp384r1 || exit $?
#DEST="../cards/ICAM_Card_Objects/ICAM_CA_and_Signer"
#cp -p data/$SUBJ.p12 "$DEST"
#cp -p data/pem/$SUBJ.crt "$DEST"

## Gen3 Secure Messaging Key Establishment using ECC P-384 (ECC P-384 CA)
#SUBJ=ICAM_Test_Card_PIV_ECC_Issued_P-384_SM_Certificate_Signer_3
#sh mkcert.sh -b -s $SUBJ -i ICAM_Test_Card_PIV_P-384_Signing_CA_gold_gen3 -t piv-content-signer-gen3-p384 -e secp384r1 -c secp384r1 || exit $?
#DEST="../cards/ICAM_Card_Objects/ICAM_CA_and_Signer"
#cp -p data/$SUBJ.p12 "$DEST"
#cp -p data/pem/$SUBJ.crt "$DEST"
#
## Card 37
#sh mkcert.sh -w -b -s ICAM_Test_Card_PIV_Auth_SP_800-73-4_PPS -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen3 -n 37 -t piv-auth
#sh mkcert.sh -w -b -s ICAM_Test_Card_PIV_Dig_Sig_SP_800-73-4_PPS -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen3 -n 37 -t piv-dig-sig
#sh mkcert.sh -w -b -s ICAM_Test_Card_PIV_Key_Mgmt_SP_800-73-4_PPS -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen3 -n 37 -t piv-key-mgmt
#sh mkcert.sh -w -b -s ICAM_Test_Card_PIV_Card_Auth_SP_800-73-4_PPS -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen3 -n 37 -t piv-card-auth
#sh mkcert.sh -w -b -s ICAM_Test_Card_PIV_Key_Hist1_SP_800-73-4_PPS -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen3 -n 37 -t piv-key-hist1
#sh mkcert.sh -w -b -s ICAM_Test_Card_PIV_Key_Hist2_SP_800-73-4_PPS -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen3 -n 37 -t piv-key-hist2
#sh mkcert.sh -w -b -s ICAM_Test_Card_PIV_Key_Hist3_SP_800-73-4_PPS -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen3 -n 37 -t piv-key-hist3
#sh mkcert.sh -w -b -s ICAM_Test_Card_PIV_Key_Hist4_SP_800-73-4_PPS -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen3 -n 37 -t piv-key-hist4
#sh mkcert.sh -w -b -s ICAM_Test_Card_PIV_Key_Hist5_SP_800-73-4_PPS -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen3 -n 37 -t piv-key-hist5
#DEST="../cards/ICAM_Card_Objects/37_Golden_FIPS_201-2_PIV_PPS_F=512_D=64"
#cp -p data/ICAM_Test_Card_PIV_*SP_800-73-4_PPS.p12 "$DEST"
#cp -p data/pem/ICAM_Test_Card_PIV_*SP_800-73-4_PPS.crt "$DEST"
#cp -p data/ICAM_Test_Card_PIV_ECC_Issued_P-256_SM_Certificate_Signer_2.p12 "$DEST"
#cp -p data/pem/ICAM_Test_Card_PIV_ECC_Issued_P-256_SM_Certificate_Signer_2.crt "$DEST"
#renameIn "$DEST" 1 1

## Card 45
#sh mkcert.sh -w -b -s ICAM_Test_Card_PIV_Auth_SP_800-73-4_OCSP_Invalid_Signature -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen3 -n 45 -t piv-auth
#sh mkcert.sh -w -b -s ICAM_Test_Card_PIV_Dig_Sig_SP_800-73-4_OCSP_Invalid_Signature -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen3 -n 45 -t piv-dig-sig
#sh mkcert.sh -w -b -s ICAM_Test_Card_PIV_Key_Mgmt_SP_800-73-4_OCSP_Invalid_Signature -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen3 -n 45 -t piv-key-mgmt
#sh mkcert.sh -w -b -s ICAM_Test_Card_PIV_Card_Auth_SP_800-73-4_OCSP_Invalid_Signature -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen3 -n 45 -t piv-card-auth
#DEST="../cards/ICAM_Card_Objects/45_OCSP_Invalid_Signature"
#cp -p data/ICAM_Test_Card_PIV_*SP_800-73-4_OCSP_Invalid_Signature.p12 "$DEST"
#cp -p data/pem/ICAM_Test_Card_PIV_*SP_800-73-4_OCSP_Invalid_Signature.crt "$DEST"
#renameIn "$DEST" 1 1

## Card 46
#sh mkcert.sh -w -b -s ICAM_Test_Card_PIV_Auth_SP_800-73-4 -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen3 -n 46 -t piv-auth
#sh mkcert.sh -w -b -s ICAM_Test_Card_PIV_Dig_Sig_SP_800-73-4 -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen3 -n 46 -t piv-dig-sig
#sh mkcert.sh -w -b -s ICAM_Test_Card_PIV_Key_Mgmt_SP_800-73-4 -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen3 -n 46 -t piv-key-mgmt
#sh mkcert.sh -w -b -s ICAM_Test_Card_PIV_Card_Auth_SP_800-73-4 -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen3 -n 46 -t piv-card-auth
#DEST="../cards/ICAM_Card_Objects/46_Golden_FIPS_201-2_PIV"
#cp -p data/ICAM_Test_Card_PIV_*SP_800-73-4.p12 "$DEST"
#cp -p data/pem/ICAM_Test_Card_PIV_*SP_800-73-4.crt "$DEST"
#renameIn "$DEST" 1 1

## Card 48
#sh mkcert.sh -w -b -s ICAM_Test_Card_PIV_Auth_SP_800-73-4_Non-Zero_PPS_LEN -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen3 -n 48 -t piv-auth
#sh mkcert.sh -w -b -s ICAM_Test_Card_PIV_Dig_Sig_SP_800-73-4_Non-Zero_PPS_LEN -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen3 -n 48 -t piv-dig-sig
#sh mkcert.sh -w -b -s ICAM_Test_Card_PIV_Key_Mgmt_SP_800-73-4_Non-Zero_PPS_LEN -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen3 -n 48 -t piv-key-mgmt
#sh mkcert.sh -w -b -s ICAM_Test_Card_PIV_Card_Auth_SP_800-73-4_Non-Zero_PPS_LEN -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen3 -n 48 -t piv-card-auth
#DEST="../cards/ICAM_Card_Objects/48_T=1_with_Non-Zero_PPS_LEN_Value"
#cp -p data/ICAM_Test_Card_PIV_*PPS_LEN.p12 "$DEST"
#cp -p data/pem/ICAM_Test_Card_PIV_*PPS_LEN.crt "$DEST"
#renameIn "$DEST" 1 1

## Gen3 Secure Messaging Key Establishment using ECC P-256 with intermediate CVC (RSA 2048 CA)
#SUBJ=ICAM_Test_Card_PIV_RSA_Issued_Intermediate_CVC_Signer
#sh mkcert.sh -b -s $SUBJ -i ICAM_Test_Card_PIV_RSA_2048_Signing_CA_-_gold_gen3 -t piv-content-signer-rsa-2048 -e prime256v1 --cakey rsa2048 || exit $?
#DEST="../cards/ICAM_Card_Objects/ICAM_CA_and_Signer"
#cp -p data/$SUBJ.p12 "$DEST"
#cp -p data/pem/$SUBJ.crt "$DEST"

## Card 01
T=Golden_PIV
sh mkcert.sh -w -b -s "ICAM_Test_Card_PIV_Dig_Sig_SP_800-73-4_$T" -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen1-2 -n 01 -t piv-dig-sig || exit $?
sh mkcert.sh -w -b -s "ICAM_Test_Card_PIV_Key_Mgmt_SP_800-73-4_$T" -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen1-2 -n 01 -t piv-key-mgmt || exit $?
DEST="../cards/ICAM_Card_Objects/01_$T"
cp -p data/ICAM_*_$T.p12 "$DEST"
cp -p data/pem/ICAM_*_$T.crt "$DEST"
renameIn "$DEST" 1 1

## Card 02
T=Golden_PIV-I
sh mkcert.sh -w -b -s "ICAM_Test_Card_PIV_Dig_Sig_SP_800-73-4_$T" -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen1-2 -n 02 -t pivi-dig-sig || exit $?
sh mkcert.sh -w -b -s "ICAM_Test_Card_PIV_Key_Mgmt_SP_800-73-4_$T" -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen1-2 -n 02 -t pivi-key-mgmt || exit $?
DEST="../cards/ICAM_Card_Objects/02_$T"
cp -p data/ICAM_*_$T.p12 "$DEST"
cp -p data/pem/ICAM_*_$T.crt "$DEST"
renameIn "$DEST" 1 1

## Card 03
T=SKID_Mismatch
sh mkcert.sh -w -b -s "ICAM_Test_Card_PIV_Dig_Sig_SP_800-73-4_$T" -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen1-2 -n 03 -t piv-dig-sig || exit $?
sh mkcert.sh -w -b -s "ICAM_Test_Card_PIV_Key_Mgmt_SP_800-73-4_$T" -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen1-2 -n 03 -t piv-key-mgmt || exit $?
DEST="../cards/ICAM_Card_Objects/03_$T"
cp -p data/ICAM_*_$T.p12 "$DEST"
cp -p data/pem/ICAM_*_$T.crt "$DEST"
renameIn "$DEST" 1 1

## Card 04
T=Tampered_CHUID
sh mkcert.sh -w -b -s "ICAM_Test_Card_PIV_Dig_Sig_SP_800-73-4_$T" -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen1-2 -n 04 -t piv-dig-sig || exit $?
sh mkcert.sh -w -b -s "ICAM_Test_Card_PIV_Key_Mgmt_SP_800-73-4_$T" -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen1-2 -n 04 -t piv-key-mgmt || exit $?
DEST="../cards/ICAM_Card_Objects/04_$T"
cp -p data/ICAM_*_$T.p12 "$DEST"
cp -p data/pem/ICAM_*_$T.crt "$DEST"
renameIn "$DEST" 1 1

## Card 05
T=Tampered_Certificates
sh mkcert.sh -w -b -s "ICAM_Test_Card_PIV_Dig_Sig_SP_800-73-4_$T" -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen1-2 -n 05 -t piv-dig-sig || exit $?
sh mkcert.sh -w -b -s "ICAM_Test_Card_PIV_Key_Mgmt_SP_800-73-4_$T" -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen1-2 -n 05 -t piv-key-mgmt || exit $?
DEST="../cards/ICAM_Card_Objects/05_$T"
cp -p data/ICAM_*_$T.p12 "$DEST"
cp -p data/pem/ICAM_*_$T.crt "$DEST"
renameIn "$DEST" 1 1

## Card 06
T=Tampered_PHOTO
sh mkcert.sh -w -b -s "ICAM_Test_Card_PIV_Dig_Sig_SP_800-73-4_$T" -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen1-2 -n 06 -t piv-dig-sig || exit $?
sh mkcert.sh -w -b -s "ICAM_Test_Card_PIV_Key_Mgmt_SP_800-73-4_$T" -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen1-2 -n 06 -t piv-key-mgmt || exit $?
DEST="../cards/ICAM_Card_Objects/06_$T"
cp -p data/ICAM_*_$T.p12 "$DEST"
cp -p data/pem/ICAM_*_$T.crt "$DEST"
renameIn "$DEST" 1 1

## Card 07
T=Tampered_Fingerprints
sh mkcert.sh -w -b -s "ICAM_Test_Card_PIV_Dig_Sig_SP_800-73-4_$T" -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen1-2 -n 07 -t piv-dig-sig || exit $?
sh mkcert.sh -w -b -s "ICAM_Test_Card_PIV_Key_Mgmt_SP_800-73-4_$T" -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen1-2 -n 07 -t piv-key-mgmt || exit $?
DEST="../cards/ICAM_Card_Objects/07_$T"
cp -p data/ICAM_*_$T.p12 "$DEST"
cp -p data/pem/ICAM_*_$T.crt "$DEST"
renameIn "$DEST" 1 1

## Card 08
T=Tampered_Security_Object
sh mkcert.sh -w -b -s "ICAM_Test_Card_PIV_Dig_Sig_SP_800-73-4_$T" -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen1-2 -n 08 -t piv-dig-sig || exit $?
sh mkcert.sh -w -b -s "ICAM_Test_Card_PIV_Key_Mgmt_SP_800-73-4_$T" -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen1-2 -n 08 -t piv-key-mgmt || exit $?
DEST="../cards/ICAM_Card_Objects/08_$T"
cp -p data/ICAM_*_$T.p12 "$DEST"
cp -p data/pem/ICAM_*_$T.crt "$DEST"
renameIn "$DEST" 1 1

## Card 09
T=Expired_CHUID_Signer
sh mkcert.sh -w -b -s "ICAM_Test_Card_PIV_Dig_Sig_SP_800-73-4_$T" -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen1-2 -n 09 -t piv-dig-sig || exit $?
sh mkcert.sh -w -b -s "ICAM_Test_Card_PIV_Key_Mgmt_SP_800-73-4_$T" -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen1-2 -n 09 -t piv-key-mgmt || exit $?
DEST="../cards/ICAM_Card_Objects/09_$T"
cp -p data/ICAM_*_$T.p12 "$DEST"
cp -p data/pem/ICAM_*_$T.crt "$DEST"
renameIn "$DEST" 1 1

## Card 10
T=Expired_Cert_Signer
sh mkcert.sh -w -b -s "ICAM_Test_Card_PIV_Dig_Sig_SP_800-73-4_$T" -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen1-2 -n 10 -t piv-dig-sig || exit $?
sh mkcert.sh -w -b -s "ICAM_Test_Card_PIV_Key_Mgmt_SP_800-73-4_$T" -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen1-2 -n 10 -t piv-key-mgmt || exit $?
DEST="../cards/ICAM_Card_Objects/10_$T"
cp -p data/ICAM_*_$T.p12 "$DEST"
cp -p data/pem/ICAM_*_$T.crt "$DEST"
renameIn "$DEST" 1 1

## Card 11
T=Certs_Expire_after_CHUID
sh mkcert.sh -w -b -s "ICAM_Test_Card_PIV_Dig_Sig_SP_800-73-4_$T" -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen1-2 -n 11 -t piv-dig-sig || exit $?
sh mkcert.sh -w -b -s "ICAM_Test_Card_PIV_Key_Mgmt_SP_800-73-4_$T" -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen1-2 -n 11 -t piv-key-mgmt || exit $?
DEST="../cards/ICAM_Card_Objects/11_$T"
cp -p data/ICAM_*_$T.p12 "$DEST"
cp -p data/pem/ICAM_*_$T.crt "$DEST"
renameIn "$DEST" 1 1

## Card 12
T=Certs_not_yet_valid
sh mkcert.sh -w -b -s "ICAM_Test_Card_PIV_Dig_Sig_SP_800-73-4_$T" -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen1-2 -n 12 -t piv-dig-sig || exit $?
sh mkcert.sh -w -b -s "ICAM_Test_Card_PIV_Key_Mgmt_SP_800-73-4_$T" -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen1-2 -n 12 -t piv-key-mgmt || exit $?
DEST="../cards/ICAM_Card_Objects/12_$T"
cp -p data/ICAM_*_$T.p12 "$DEST"
cp -p data/pem/ICAM_*_$T.crt "$DEST"
renameIn "$DEST" 1 1

## Card 13
T=Certs_are_expired
sh mkcert.sh -w -b -s "ICAM_Test_Card_PIV_Dig_Sig_SP_800-73-4_$T" -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen1-2 -n 13 -t piv-dig-sig || exit $?
sh mkcert.sh -w -b -s "ICAM_Test_Card_PIV_Key_Mgmt_SP_800-73-4_$T" -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen1-2 -n 13 -t piv-key-mgmt || exit $?
DEST="../cards/ICAM_Card_Objects/13_$T"
cp -p data/ICAM_*_$T.p12 "$DEST"
cp -p data/pem/ICAM_*_$T.crt "$DEST"
renameIn "$DEST" 1 1

## Card 14
T=Expired_CHUID
sh mkcert.sh -w -b -s "ICAM_Test_Card_PIV_Dig_Sig_SP_800-73-4_$T" -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen1-2 -n 14 -t piv-dig-sig || exit $?
sh mkcert.sh -w -b -s "ICAM_Test_Card_PIV_Key_Mgmt_SP_800-73-4_$T" -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen1-2 -n 14 -t piv-key-mgmt || exit $?
DEST="../cards/ICAM_Card_Objects/14_$T"
cp -p data/ICAM_*_$T.p12 "$DEST"
cp -p data/pem/ICAM_*_$T.crt "$DEST"
renameIn "$DEST" 1 1

## Card 15
T=CHUID_FASCN_mismatch
sh mkcert.sh -w -b -s "ICAM_Test_Card_PIV_Dig_Sig_SP_800-73-4_$T" -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen1-2 -n 15 -t piv-dig-sig || exit $?
sh mkcert.sh -w -b -s "ICAM_Test_Card_PIV_Key_Mgmt_SP_800-73-4_$T" -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen1-2 -n 15 -t piv-key-mgmt || exit $?
DEST="../cards/ICAM_Card_Objects/15_$T"
cp -p data/ICAM_*_$T.p12 "$DEST"
cp -p data/pem/ICAM_*_$T.crt "$DEST"
renameIn "$DEST" 1 1

## Card 16
T=Card_Authent_FASCN_mismatch
sh mkcert.sh -w -b -s "ICAM_Test_Card_PIV_Dig_Sig_SP_800-73-4_$T" -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen1-2 -n 16 -t piv-dig-sig || exit $?
sh mkcert.sh -w -b -s "ICAM_Test_Card_PIV_Key_Mgmt_SP_800-73-4_$T" -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen1-2 -n 16 -t piv-key-mgmt || exit $?
DEST="../cards/ICAM_Card_Objects/16_$T"
cp -p data/ICAM_*_$T.p12 "$DEST"
cp -p data/pem/ICAM_*_$T.crt "$DEST"
renameIn "$DEST" 1 1

## Card 17
T=PHOTO_FASCN_mismatch
sh mkcert.sh -w -b -s "ICAM_Test_Card_PIV_Dig_Sig_SP_800-73-4_$T" -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen1-2 -n 17 -t piv-dig-sig || exit $?
sh mkcert.sh -w -b -s "ICAM_Test_Card_PIV_Key_Mgmt_SP_800-73-4_$T" -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen1-2 -n 17 -t piv-key-mgmt || exit $?
DEST="../cards/ICAM_Card_Objects/17_$T"
cp -p data/ICAM_*_$T.p12 "$DEST"
cp -p data/pem/ICAM_*_$T.crt "$DEST"
renameIn "$DEST" 1 1

## Card 18
T=Fingerprints_FASCN_mismatch
sh mkcert.sh -w -b -s "ICAM_Test_Card_PIV_Dig_Sig_SP_800-73-4_$T" -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen1-2 -n 18 -t piv-dig-sig || exit $?
sh mkcert.sh -w -b -s "ICAM_Test_Card_PIV_Key_Mgmt_SP_800-73-4_$T" -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen1-2 -n 18 -t piv-key-mgmt || exit $?
DEST="../cards/ICAM_Card_Objects/18_$T"
cp -p data/ICAM_*_$T.p12 "$DEST"
cp -p data/pem/ICAM_*_$T.crt "$DEST"
renameIn "$DEST" 1 1

## Card 19
T=CHUID_UUID_mismatch
sh mkcert.sh -w -b -s "ICAM_Test_Card_PIV_Dig_Sig_SP_800-73-4_$T" -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen1-2 -n 19 -t pivi-dig-sig || exit $?
sh mkcert.sh -w -b -s "ICAM_Test_Card_PIV_Key_Mgmt_SP_800-73-4_$T" -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen1-2 -n 19 -t pivi-key-mgmt || exit $?
DEST="../cards/ICAM_Card_Objects/19_$T"
cp -p data/ICAM_*_$T.p12 "$DEST"
cp -p data/pem/ICAM_*_$T.crt "$DEST"
renameIn "$DEST" 1 1

## Card 20
T=Card_Authent_UUID_mismatch
sh mkcert.sh -w -b -s "ICAM_Test_Card_PIV_Dig_Sig_SP_800-73-4_$T" -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen1-2 -n 20 -t pivi-dig-sig || exit $?
sh mkcert.sh -w -b -s "ICAM_Test_Card_PIV_Key_Mgmt_SP_800-73-4_$T" -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen1-2 -n 20 -t pivi-key-mgmt || exit $?
DEST="../cards/ICAM_Card_Objects/20_$T"
cp -p data/ICAM_*_$T.p12 "$DEST"
cp -p data/pem/ICAM_*_$T.crt "$DEST"
renameIn "$DEST" 1 1

## Card 21
T=PHOTO_UUID_mismatch
sh mkcert.sh -w -b -s "ICAM_Test_Card_PIV_Dig_Sig_SP_800-73-4_$T" -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen1-2 -n 21 -t pivi-dig-sig || exit $?
sh mkcert.sh -w -b -s "ICAM_Test_Card_PIV_Key_Mgmt_SP_800-73-4_$T" -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen1-2 -n 21 -t pivi-key-mgmt || exit $?
DEST="../cards/ICAM_Card_Objects/21_$T"
cp -p data/ICAM_*_$T.p12 "$DEST"
cp -p data/pem/ICAM_*_$T.crt "$DEST"
renameIn "$DEST" 1 1

## Card 22
T=Fingerprints_UUID_mismatch
sh mkcert.sh -w -b -s "ICAM_Test_Card_PIV_Dig_Sig_SP_800-73-4_$T" -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen1-2 -n 22 -t pivi-dig-sig || exit $?
sh mkcert.sh -w -b -s "ICAM_Test_Card_PIV_Key_Mgmt_SP_800-73-4_$T" -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen1-2 -n 22 -t pivi-key-mgmt || exit $?
DEST="../cards/ICAM_Card_Objects/22_$T"
cp -p data/ICAM_*_$T.p12 "$DEST"
cp -p data/pem/ICAM_*_$T.crt "$DEST"
renameIn "$DEST" 1 1

## Card 23
T=Public_Private_Key_mismatch
sh mkcert.sh -w -b -s "ICAM_Test_Card_PIV_Dig_Sig_SP_800-73-4_$T" -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen1-2 -n 23 -t piv-dig-sig || exit $?
sh mkcert.sh -w -b -s "ICAM_Test_Card_PIV_Key_Mgmt_SP_800-73-4_$T" -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen1-2 -n 23 -t piv-key-mgmt || exit $?
DEST="../cards/ICAM_Card_Objects/23_$T"
cp -p data/ICAM_*_$T.p12 "$DEST"
cp -p data/pem/ICAM_*_$T.crt "$DEST"
renameIn "$DEST" 1 1

## Card 24
T=Revoked_Certificates
sh mkcert.sh -w -b -s "ICAM_Test_Card_PIV_Dig_Sig_SP_800-73-4_$T" -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen1-2 -n 23 -t piv-dig-sig || exit $?
sh mkcert.sh -w -b -s "ICAM_Test_Card_PIV_Key_Mgmt_SP_800-73-4_$T" -i ICAM_Test_Card_PIV_Signing_CA_-_gold_gen1-2 -n 23 -t piv-key-mgmt || exit $?
DEST="../cards/ICAM_Card_Objects/24_$T"
cp -p data/ICAM_*_$T.p12 "$DEST"
cp -p data/pem/ICAM_*_$T.crt "$DEST"
renameIn "$DEST" 1 1

