
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dirs; struct TYPE_3__* engine_id; struct TYPE_3__* DYNAMIC_LIBNAME; int dynamic_dso; } ;
typedef TYPE_1__ dynamic_data_ctx ;
typedef int CRYPTO_EX_DATA ;


 int DSO_free (int ) ;
 int OPENSSL_free (TYPE_1__*) ;
 int int_free_str ;
 int sk_OPENSSL_STRING_pop_free (int ,int ) ;

__attribute__((used)) static void dynamic_data_ctx_free_func(void *parent, void *ptr,
                                       CRYPTO_EX_DATA *ad, int idx, long argl,
                                       void *argp)
{
    if (ptr) {
        dynamic_data_ctx *ctx = (dynamic_data_ctx *)ptr;
        DSO_free(ctx->dynamic_dso);
        OPENSSL_free(ctx->DYNAMIC_LIBNAME);
        OPENSSL_free(ctx->engine_id);
        sk_OPENSSL_STRING_pop_free(ctx->dirs, int_free_str);
        OPENSSL_free(ctx);
    }
}
