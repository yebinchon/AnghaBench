
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PROV_CIPHER_CTX ;
typedef int PROV_AES_XTS_CTX ;
typedef int * OSSL_xts_stream_fn ;


 int AES_decrypt ;
 int AES_encrypt ;
 int AES_set_decrypt_key ;
 int AES_set_encrypt_key ;
 int * AES_xts_decrypt ;
 int * AES_xts_encrypt ;
 scalar_t__ BSAES_CAPABLE ;
 scalar_t__ HWAES_CAPABLE ;
 int HWAES_decrypt ;
 int HWAES_encrypt ;
 int HWAES_set_decrypt_key ;
 int HWAES_set_encrypt_key ;
 int * HWAES_xts_decrypt ;
 int * HWAES_xts_encrypt ;
 scalar_t__ VPAES_CAPABLE ;
 int XTS_SET_KEY_FN (int ,int ,int ,int ,int *,int *) ;
 int * bsaes_xts_decrypt ;
 int * bsaes_xts_encrypt ;
 int vpaes_decrypt ;
 int vpaes_encrypt ;
 int vpaes_set_decrypt_key ;
 int vpaes_set_encrypt_key ;

__attribute__((used)) static int cipher_hw_aes_xts_generic_initkey(PROV_CIPHER_CTX *ctx,
                                             const unsigned char *key,
                                             size_t keylen)
{
    PROV_AES_XTS_CTX *xctx = (PROV_AES_XTS_CTX *)ctx;
    OSSL_xts_stream_fn stream_enc = ((void*)0);
    OSSL_xts_stream_fn stream_dec = ((void*)0);
    {
        XTS_SET_KEY_FN(AES_set_encrypt_key, AES_set_decrypt_key,
                       AES_encrypt, AES_decrypt, stream_enc, stream_dec);
    }
    return 1;
}
