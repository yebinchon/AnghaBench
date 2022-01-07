
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PKCS8_PRIV_KEY_INFO ;
typedef int EVP_PKEY ;
typedef int BIO ;


 int * EVP_PKEY2PKCS8 (int const*) ;
 int PKCS8_PRIV_KEY_INFO_free (int *) ;
 int i2d_PKCS8_PRIV_KEY_INFO_bio (int *,int *) ;

int i2d_PKCS8PrivateKeyInfo_bio(BIO *bp, const EVP_PKEY *key)
{
    PKCS8_PRIV_KEY_INFO *p8inf;
    int ret;

    p8inf = EVP_PKEY2PKCS8(key);
    if (p8inf == ((void*)0))
        return 0;
    ret = i2d_PKCS8_PRIV_KEY_INFO_bio(bp, p8inf);
    PKCS8_PRIV_KEY_INFO_free(p8inf);
    return ret;
}
