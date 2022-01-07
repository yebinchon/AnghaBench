
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PARAM ;


 int RC4_HMAC_MD5_BLOCK_BITS ;
 int RC4_HMAC_MD5_FLAGS ;
 int RC4_HMAC_MD5_IV_BITS ;
 int RC4_HMAC_MD5_KEY_BITS ;
 int RC4_HMAC_MD5_MODE ;
 int cipher_generic_get_params (int *,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int rc4_hmac_md5_get_params(OSSL_PARAM params[])
{
    return cipher_generic_get_params(params, RC4_HMAC_MD5_MODE,
                                     RC4_HMAC_MD5_FLAGS,
                                     RC4_HMAC_MD5_KEY_BITS,
                                     RC4_HMAC_MD5_BLOCK_BITS,
                                     RC4_HMAC_MD5_IV_BITS);
}
