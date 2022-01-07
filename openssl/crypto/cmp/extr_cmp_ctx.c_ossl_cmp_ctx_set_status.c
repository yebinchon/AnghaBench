
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; } ;
typedef TYPE_1__ OSSL_CMP_CTX ;


 int ossl_assert (int ) ;

int ossl_cmp_ctx_set_status(OSSL_CMP_CTX *ctx, int status)
{
    if (!ossl_assert(ctx != ((void*)0)))
        return 0;
    ctx->status = status;
    return 1;
}
