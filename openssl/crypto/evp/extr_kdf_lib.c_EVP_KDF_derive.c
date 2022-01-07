
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int data; TYPE_1__* meth; } ;
struct TYPE_4__ {int (* derive ) (int ,unsigned char*,size_t) ;} ;
typedef TYPE_2__ EVP_KDF_CTX ;


 int stub1 (int ,unsigned char*,size_t) ;

int EVP_KDF_derive(EVP_KDF_CTX *ctx, unsigned char *key, size_t keylen)
{
    if (ctx == ((void*)0))
        return 0;

    return ctx->meth->derive(ctx->data, key, keylen);
}
