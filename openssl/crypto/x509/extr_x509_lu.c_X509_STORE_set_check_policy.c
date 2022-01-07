
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509_STORE_CTX_check_policy_fn ;
struct TYPE_3__ {int check_policy; } ;
typedef TYPE_1__ X509_STORE ;



void X509_STORE_set_check_policy(X509_STORE *ctx,
                                 X509_STORE_CTX_check_policy_fn check_policy)
{
    ctx->check_policy = check_policy;
}
