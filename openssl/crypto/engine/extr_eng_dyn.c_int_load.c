
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dir_load; char* DYNAMIC_LIBNAME; int dynamic_dso; int dirs; } ;
typedef TYPE_1__ dynamic_data_ctx ;


 int * DSO_load (int ,char*,int *,int ) ;
 char* DSO_merge (int ,char*,char const*) ;
 int OPENSSL_free (char*) ;
 int sk_OPENSSL_STRING_num (int ) ;
 char* sk_OPENSSL_STRING_value (int ,int) ;

__attribute__((used)) static int int_load(dynamic_data_ctx *ctx)
{
    int num, loop;

    if ((ctx->dir_load != 2) && (DSO_load(ctx->dynamic_dso,
                                          ctx->DYNAMIC_LIBNAME, ((void*)0),
                                          0)) != ((void*)0))
        return 1;

    if (!ctx->dir_load || (num = sk_OPENSSL_STRING_num(ctx->dirs)) < 1)
        return 0;
    for (loop = 0; loop < num; loop++) {
        const char *s = sk_OPENSSL_STRING_value(ctx->dirs, loop);
        char *merge = DSO_merge(ctx->dynamic_dso, ctx->DYNAMIC_LIBNAME, s);
        if (!merge)
            return 0;
        if (DSO_load(ctx->dynamic_dso, merge, ((void*)0), 0)) {

            OPENSSL_free(merge);
            return 1;
        }
        OPENSSL_free(merge);
    }
    return 0;
}
