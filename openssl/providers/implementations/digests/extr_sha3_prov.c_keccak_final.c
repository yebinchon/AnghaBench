
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* final ) (unsigned char*,TYPE_2__*) ;} ;
struct TYPE_5__ {size_t md_size; TYPE_1__ meth; } ;
typedef TYPE_2__ KECCAK1600_CTX ;


 int stub1 (unsigned char*,TYPE_2__*) ;

__attribute__((used)) static int keccak_final(void *vctx, unsigned char *out, size_t *outl,
                        size_t outsz)
{
    int ret = 1;
    KECCAK1600_CTX *ctx = vctx;

    if (outsz > 0)
        ret = ctx->meth.final(out, ctx);

    *outl = ctx->md_size;
    return ret;
}
