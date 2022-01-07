
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int X509_ALGOR ;
struct TYPE_6__ {TYPE_1__* ameth; } ;
struct TYPE_5__ {int pkey_id; } ;
typedef int RSA ;
typedef int PKCS8_PRIV_KEY_INFO ;
typedef TYPE_2__ EVP_PKEY ;


 int ERR_R_RSA_LIB ;
 int EVP_PKEY_assign (TYPE_2__*,int ,int *) ;
 int PKCS8_pkey_get0 (int *,unsigned char const**,int*,int const**,int const*) ;
 int RSA_F_RSA_PRIV_DECODE ;
 int RSA_free (int *) ;
 int RSAerr (int ,int ) ;
 int * d2i_RSAPrivateKey (int *,unsigned char const**,int) ;
 int rsa_param_decode (int *,int const*) ;

__attribute__((used)) static int rsa_priv_decode(EVP_PKEY *pkey, const PKCS8_PRIV_KEY_INFO *p8)
{
    const unsigned char *p;
    RSA *rsa;
    int pklen;
    const X509_ALGOR *alg;

    if (!PKCS8_pkey_get0(((void*)0), &p, &pklen, &alg, p8))
        return 0;
    rsa = d2i_RSAPrivateKey(((void*)0), &p, pklen);
    if (rsa == ((void*)0)) {
        RSAerr(RSA_F_RSA_PRIV_DECODE, ERR_R_RSA_LIB);
        return 0;
    }
    if (!rsa_param_decode(rsa, alg)) {
        RSA_free(rsa);
        return 0;
    }
    EVP_PKEY_assign(pkey, pkey->ameth->pkey_id, rsa);
    return 1;
}
