
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_ALGOR ;
typedef int PKCS8_PRIV_KEY_INFO ;
typedef int EVP_PKEY ;
typedef int EC_KEY ;


 int EC_F_ECKEY_PRIV_DECODE ;
 int EC_KEY_free (int *) ;
 int EC_R_DECODE_ERROR ;
 int ECerr (int ,int ) ;
 int ERR_R_EC_LIB ;
 int EVP_PKEY_assign_EC_KEY (int *,int *) ;
 int PKCS8_pkey_get0 (int *,unsigned char const**,int*,int const**,int const*) ;
 int X509_ALGOR_get0 (int *,int*,void const**,int const*) ;
 int d2i_ECPrivateKey (int **,unsigned char const**,int) ;
 int * eckey_type2param (int,void const*) ;

__attribute__((used)) static int eckey_priv_decode(EVP_PKEY *pkey, const PKCS8_PRIV_KEY_INFO *p8)
{
    const unsigned char *p = ((void*)0);
    const void *pval;
    int ptype, pklen;
    EC_KEY *eckey = ((void*)0);
    const X509_ALGOR *palg;

    if (!PKCS8_pkey_get0(((void*)0), &p, &pklen, &palg, p8))
        return 0;
    X509_ALGOR_get0(((void*)0), &ptype, &pval, palg);

    eckey = eckey_type2param(ptype, pval);

    if (eckey == ((void*)0))
        goto ecliberr;


    if (!d2i_ECPrivateKey(&eckey, &p, pklen)) {
        ECerr(EC_F_ECKEY_PRIV_DECODE, EC_R_DECODE_ERROR);
        goto ecerr;
    }

    EVP_PKEY_assign_EC_KEY(pkey, eckey);
    return 1;

 ecliberr:
    ECerr(EC_F_ECKEY_PRIV_DECODE, ERR_R_EC_LIB);
 ecerr:
    EC_KEY_free(eckey);
    return 0;
}
