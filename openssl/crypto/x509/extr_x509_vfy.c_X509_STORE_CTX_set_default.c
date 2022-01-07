
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509_VERIFY_PARAM ;
struct TYPE_3__ {int param; } ;
typedef TYPE_1__ X509_STORE_CTX ;


 int X509_VERIFY_PARAM_inherit (int ,int const*) ;
 int * X509_VERIFY_PARAM_lookup (char const*) ;

int X509_STORE_CTX_set_default(X509_STORE_CTX *ctx, const char *name)
{
    const X509_VERIFY_PARAM *param;

    param = X509_VERIFY_PARAM_lookup(name);
    if (param == ((void*)0))
        return 0;
    return X509_VERIFY_PARAM_inherit(ctx->param, param);
}
