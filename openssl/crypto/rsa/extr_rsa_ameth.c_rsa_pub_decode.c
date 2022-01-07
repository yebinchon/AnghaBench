
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int X509_PUBKEY ;
typedef int X509_ALGOR ;
struct TYPE_6__ {TYPE_1__* ameth; } ;
struct TYPE_5__ {int pkey_id; } ;
typedef int RSA ;
typedef TYPE_2__ EVP_PKEY ;


 int ERR_R_RSA_LIB ;
 int EVP_PKEY_assign (TYPE_2__*,int ,int *) ;
 int RSA_F_RSA_PUB_DECODE ;
 int RSA_free (int *) ;
 int RSAerr (int ,int ) ;
 int X509_PUBKEY_get0_param (int *,unsigned char const**,int*,int **,int *) ;
 int * d2i_RSAPublicKey (int *,unsigned char const**,int) ;
 int rsa_param_decode (int *,int *) ;

__attribute__((used)) static int rsa_pub_decode(EVP_PKEY *pkey, X509_PUBKEY *pubkey)
{
    const unsigned char *p;
    int pklen;
    X509_ALGOR *alg;
    RSA *rsa = ((void*)0);

    if (!X509_PUBKEY_get0_param(((void*)0), &p, &pklen, &alg, pubkey))
        return 0;
    if ((rsa = d2i_RSAPublicKey(((void*)0), &p, pklen)) == ((void*)0)) {
        RSAerr(RSA_F_RSA_PUB_DECODE, ERR_R_RSA_LIB);
        return 0;
    }
    if (!rsa_param_decode(rsa, alg)) {
        RSA_free(rsa);
        return 0;
    }
    if (!EVP_PKEY_assign(pkey, pkey->ameth->pkey_id, rsa)) {
        RSA_free(rsa);
        return 0;
    }
    return 1;
}
