
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PROV_CIPHER_CTX ;
typedef int PROV_AES_OCB_CTX ;


 int AES_decrypt ;
 int AES_encrypt ;
 int AES_set_decrypt_key ;
 int AES_set_encrypt_key ;
 scalar_t__ HWAES_CAPABLE ;
 int HWAES_decrypt ;
 int HWAES_encrypt ;
 int * HWAES_ocb_decrypt ;
 int * HWAES_ocb_encrypt ;
 int HWAES_set_decrypt_key ;
 int HWAES_set_encrypt_key ;
 int OCB_SET_KEY_FN (int ,int ,int ,int ,int *,int *) ;
 scalar_t__ VPAES_CAPABLE ;
 int vpaes_decrypt ;
 int vpaes_encrypt ;
 int vpaes_set_decrypt_key ;
 int vpaes_set_encrypt_key ;

__attribute__((used)) static int cipher_hw_aes_ocb_generic_initkey(PROV_CIPHER_CTX *vctx,
                                             const unsigned char *key,
                                             size_t keylen)
{
    PROV_AES_OCB_CTX *ctx = (PROV_AES_OCB_CTX *)vctx;
    {
        OCB_SET_KEY_FN(AES_set_encrypt_key, AES_set_decrypt_key,
                       AES_encrypt, AES_decrypt, ((void*)0), ((void*)0));
    }
    return 1;
}
