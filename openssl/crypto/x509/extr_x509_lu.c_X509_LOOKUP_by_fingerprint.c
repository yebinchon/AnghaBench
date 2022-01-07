
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int X509_OBJECT ;
typedef int X509_LOOKUP_TYPE ;
struct TYPE_6__ {TYPE_1__* method; } ;
typedef TYPE_2__ X509_LOOKUP ;
struct TYPE_5__ {int (* get_by_fingerprint ) (TYPE_2__*,int ,unsigned char const*,int,int *) ;} ;


 int stub1 (TYPE_2__*,int ,unsigned char const*,int,int *) ;

int X509_LOOKUP_by_fingerprint(X509_LOOKUP *ctx, X509_LOOKUP_TYPE type,
                               const unsigned char *bytes, int len,
                               X509_OBJECT *ret)
{
    if ((ctx->method == ((void*)0)) || (ctx->method->get_by_fingerprint == ((void*)0)))
        return 0;
    return ctx->method->get_by_fingerprint(ctx, type, bytes, len, ret);
}
