
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int resume_extra; int extra; } ;
typedef TYPE_1__ SSL_TEST_CTX ;


 int ssl_test_extra_conf_free_data (int *) ;

__attribute__((used)) static void ssl_test_ctx_free_extra_data(SSL_TEST_CTX *ctx)
{
    ssl_test_extra_conf_free_data(&ctx->extra);
    ssl_test_extra_conf_free_data(&ctx->resume_extra);
}
