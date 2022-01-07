
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* test_section; TYPE_1__* expected_ctx; } ;
struct TYPE_3__ {int expected_result; } ;


 int EXECUTE_SSL_TEST_CTX_TEST () ;
 int SETUP_SSL_TEST_CTX_TEST_FIXTURE () ;
 int SSL_TEST_SUCCESS ;
 TYPE_2__* fixture ;
 int result ;

__attribute__((used)) static int test_empty_configuration(void)
{
    SETUP_SSL_TEST_CTX_TEST_FIXTURE();
    if (fixture == ((void*)0))
        return 0;
    fixture->test_section = "ssltest_default";
    fixture->expected_ctx->expected_result = SSL_TEST_SUCCESS;
    EXECUTE_SSL_TEST_CTX_TEST();
    return result;
}
