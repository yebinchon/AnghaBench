
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ encrypt; } ;
typedef TYPE_1__ EVP_CIPHER_CTX ;


 int EVP_DecryptUpdate (TYPE_1__*,unsigned char*,int*,unsigned char const*,int) ;
 int EVP_EncryptUpdate (TYPE_1__*,unsigned char*,int*,unsigned char const*,int) ;

int EVP_CipherUpdate(EVP_CIPHER_CTX *ctx, unsigned char *out, int *outl,
                     const unsigned char *in, int inl)
{
    if (ctx->encrypt)
        return EVP_EncryptUpdate(ctx, out, outl, in, inl);
    else
        return EVP_DecryptUpdate(ctx, out, outl, in, inl);
}
