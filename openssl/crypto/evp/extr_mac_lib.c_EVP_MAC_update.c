
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int data; TYPE_1__* meth; } ;
struct TYPE_4__ {int (* update ) (int ,unsigned char const*,size_t) ;} ;
typedef TYPE_2__ EVP_MAC_CTX ;


 int stub1 (int ,unsigned char const*,size_t) ;

int EVP_MAC_update(EVP_MAC_CTX *ctx, const unsigned char *data, size_t datalen)
{
    if (datalen == 0)
        return 1;
    return ctx->meth->update(ctx->data, data, datalen);
}
