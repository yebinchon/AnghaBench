
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * log_cb; } ;
typedef TYPE_1__ OSSL_CMP_CTX ;


 int OSSL_CMP_print_errors_cb (int *) ;

void OSSL_CMP_CTX_print_errors(OSSL_CMP_CTX *ctx)
{
    OSSL_CMP_print_errors_cb(ctx == ((void*)0) ? ((void*)0) : ctx->log_cb);
}
