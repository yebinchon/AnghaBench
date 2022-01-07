
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;


 int EVP_F_EVP_PKEY_ENCRYPT_OLD ;
 scalar_t__ EVP_PKEY_RSA ;
 int EVP_PKEY_get0_RSA (int *) ;
 scalar_t__ EVP_PKEY_id (int *) ;
 int EVP_R_PUBLIC_KEY_NOT_RSA ;
 int EVPerr (int ,int ) ;
 int RSA_PKCS1_PADDING ;
 int RSA_public_encrypt (int,unsigned char const*,unsigned char*,int ,int ) ;

int EVP_PKEY_encrypt_old(unsigned char *ek, const unsigned char *key,
                         int key_len, EVP_PKEY *pubk)
{
    int ret = 0;


    if (EVP_PKEY_id(pubk) != EVP_PKEY_RSA) {

        EVPerr(EVP_F_EVP_PKEY_ENCRYPT_OLD, EVP_R_PUBLIC_KEY_NOT_RSA);

        goto err;
    }
    ret =
        RSA_public_encrypt(key_len, key, ek, EVP_PKEY_get0_RSA(pubk),
                           RSA_PKCS1_PADDING);
 err:

    return ret;
}
