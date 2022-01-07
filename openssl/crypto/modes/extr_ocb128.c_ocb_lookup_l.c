
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t l_index; size_t max_l_index; int * l; } ;
typedef int OCB_BLOCK ;
typedef TYPE_1__ OCB128_CONTEXT ;


 void* OPENSSL_realloc (int *,int) ;
 int ocb_double (int *,int *) ;

__attribute__((used)) static OCB_BLOCK *ocb_lookup_l(OCB128_CONTEXT *ctx, size_t idx)
{
    size_t l_index = ctx->l_index;

    if (idx <= l_index) {
        return ctx->l + idx;
    }


    if (idx >= ctx->max_l_index) {
        void *tmp_ptr;
        ctx->max_l_index += (idx - ctx->max_l_index + 4) & ~3;
        tmp_ptr = OPENSSL_realloc(ctx->l, ctx->max_l_index * sizeof(OCB_BLOCK));
        if (tmp_ptr == ((void*)0))
            return ((void*)0);
        ctx->l = tmp_ptr;
    }
    while (l_index < idx) {
        ocb_double(ctx->l + l_index, ctx->l + l_index + 1);
        l_index++;
    }
    ctx->l_index = l_index;

    return ctx->l + idx;
}
