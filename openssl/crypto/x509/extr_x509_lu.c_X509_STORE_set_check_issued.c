
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509_STORE_CTX_check_issued_fn ;
struct TYPE_3__ {int check_issued; } ;
typedef TYPE_1__ X509_STORE ;



void X509_STORE_set_check_issued(X509_STORE *ctx,
                                 X509_STORE_CTX_check_issued_fn check_issued)
{
    ctx->check_issued = check_issued;
}
