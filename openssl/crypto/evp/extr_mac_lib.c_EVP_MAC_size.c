
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* meth; int * data; } ;
struct TYPE_4__ {scalar_t__ (* get_params ) (int *) ;scalar_t__ (* get_ctx_params ) (int *,int *) ;} ;
typedef int OSSL_PARAM ;
typedef TYPE_2__ EVP_MAC_CTX ;


 int OSSL_MAC_PARAM_SIZE ;
 int OSSL_PARAM_END ;
 int OSSL_PARAM_construct_size_t (int ,size_t*) ;
 scalar_t__ stub1 (int *,int *) ;
 scalar_t__ stub2 (int *) ;

size_t EVP_MAC_size(EVP_MAC_CTX *ctx)
{
    size_t sz = 0;

    if (ctx->data != ((void*)0)) {
        OSSL_PARAM params[2] = { OSSL_PARAM_END, OSSL_PARAM_END };

        params[0] = OSSL_PARAM_construct_size_t(OSSL_MAC_PARAM_SIZE, &sz);
        if (ctx->meth->get_ctx_params != ((void*)0)) {
            if (ctx->meth->get_ctx_params(ctx->data, params))
                return sz;
        } else if (ctx->meth->get_params != ((void*)0)) {
            if (ctx->meth->get_params(params))
                return sz;
        }
    }




    return 0;
}
