
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void PROV_RC4_HMAC_MD5_CTX ;


 void* OPENSSL_zalloc (int) ;
 int PROV_CIPHER_HW_rc4_hmac_md5 (int ) ;
 int RC4_HMAC_MD5_BLOCK_BITS ;
 int RC4_HMAC_MD5_FLAGS ;
 int RC4_HMAC_MD5_IV_BITS ;
 int RC4_HMAC_MD5_KEY_BITS ;
 int RC4_HMAC_MD5_MODE ;
 int cipher_generic_initkey (void*,int ,int ,int ,int ,int ,int ,int *) ;

__attribute__((used)) static void *rc4_hmac_md5_newctx(void *provctx)
{
    PROV_RC4_HMAC_MD5_CTX *ctx = OPENSSL_zalloc(sizeof(*ctx));

    if (ctx != ((void*)0))
        cipher_generic_initkey(ctx, RC4_HMAC_MD5_KEY_BITS,
                               RC4_HMAC_MD5_BLOCK_BITS,
                               RC4_HMAC_MD5_IV_BITS,
                               RC4_HMAC_MD5_MODE, RC4_HMAC_MD5_FLAGS,
                               PROV_CIPHER_HW_rc4_hmac_md5(RC4_HMAC_MD5_KEY_BITS),
                               ((void*)0));
     return ctx;
}
