
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int data; TYPE_1__* meth; } ;
struct TYPE_5__ {int (* final ) (int ,unsigned char*,size_t*,size_t) ;} ;
typedef TYPE_2__ EVP_MAC_CTX ;


 int EVP_MAC_size (TYPE_2__*) ;
 int stub1 (int ,unsigned char*,size_t*,size_t) ;

int EVP_MAC_final(EVP_MAC_CTX *ctx,
                  unsigned char *out, size_t *outl, size_t outsize)
{
    int l = EVP_MAC_size(ctx);

    if (l < 0)
        return 0;
    if (outl != ((void*)0))
        *outl = l;
    if (out == ((void*)0))
        return 1;
    return ctx->meth->final(ctx->data, out, outl, outsize);
}
