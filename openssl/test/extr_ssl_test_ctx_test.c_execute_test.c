
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int expected_ctx; int test_section; } ;
typedef TYPE_1__ SSL_TEST_CTX_TEST_FIXTURE ;
typedef int SSL_TEST_CTX ;


 int * SSL_TEST_CTX_create (int ,int ) ;
 int SSL_TEST_CTX_free (int *) ;
 int TEST_ptr (int *) ;
 int conf ;
 int testctx_eq (int *,int ) ;

__attribute__((used)) static int execute_test(SSL_TEST_CTX_TEST_FIXTURE *fixture)
{
    int success = 0;
    SSL_TEST_CTX *ctx;

    if (!TEST_ptr(ctx = SSL_TEST_CTX_create(conf, fixture->test_section))
            || !testctx_eq(ctx, fixture->expected_ctx))
        goto err;

    success = 1;
 err:
    SSL_TEST_CTX_free(ctx);
    return success;
}
