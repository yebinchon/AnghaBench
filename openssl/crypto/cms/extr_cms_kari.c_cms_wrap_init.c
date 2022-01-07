
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ctx; } ;
typedef int EVP_CIPHER_CTX ;
typedef int EVP_CIPHER ;
typedef TYPE_1__ CMS_KeyAgreeRecipientInfo ;


 int * EVP_CIPHER_CTX_cipher (int *) ;
 scalar_t__ EVP_CIPHER_CTX_mode (int *) ;
 int EVP_CIPHER_key_length (int const*) ;
 scalar_t__ EVP_CIPHER_type (int const*) ;
 scalar_t__ EVP_CIPH_WRAP_MODE ;
 int EVP_EncryptInit_ex (int *,int const*,int *,int *,int *) ;
 int * EVP_aes_128_wrap () ;
 int * EVP_aes_192_wrap () ;
 int * EVP_aes_256_wrap () ;
 int * EVP_des_ede3_wrap () ;
 scalar_t__ NID_des_ede3_cbc ;

__attribute__((used)) static int cms_wrap_init(CMS_KeyAgreeRecipientInfo *kari,
                         const EVP_CIPHER *cipher)
{
    EVP_CIPHER_CTX *ctx = kari->ctx;
    const EVP_CIPHER *kekcipher;
    int keylen = EVP_CIPHER_key_length(cipher);

    kekcipher = EVP_CIPHER_CTX_cipher(ctx);

    if (kekcipher) {
        if (EVP_CIPHER_CTX_mode(ctx) != EVP_CIPH_WRAP_MODE)
            return 0;
        return 1;
    }





    if (EVP_CIPHER_type(cipher) == NID_des_ede3_cbc)
        kekcipher = EVP_des_ede3_wrap();
    else

    if (keylen <= 16)
        kekcipher = EVP_aes_128_wrap();
    else if (keylen <= 24)
        kekcipher = EVP_aes_192_wrap();
    else
        kekcipher = EVP_aes_256_wrap();
    return EVP_EncryptInit_ex(ctx, kekcipher, ((void*)0), ((void*)0), ((void*)0));
}
