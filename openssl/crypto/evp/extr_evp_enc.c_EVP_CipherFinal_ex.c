
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ encrypt; } ;
typedef TYPE_1__ EVP_CIPHER_CTX ;


 int EVP_DecryptFinal_ex (TYPE_1__*,unsigned char*,int*) ;
 int EVP_EncryptFinal_ex (TYPE_1__*,unsigned char*,int*) ;

int EVP_CipherFinal_ex(EVP_CIPHER_CTX *ctx, unsigned char *out, int *outl)
{
    if (ctx->encrypt)
        return EVP_EncryptFinal_ex(ctx, out, outl);
    else
        return EVP_DecryptFinal_ex(ctx, out, outl);
}
