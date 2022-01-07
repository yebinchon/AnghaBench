
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int result; } ;
struct TYPE_5__ {int expected_result; } ;
typedef TYPE_1__ SSL_TEST_CTX ;
typedef TYPE_2__ HANDSHAKE_RESULT ;


 int TEST_info (char*,int ,int ) ;
 int TEST_int_eq (int ,int ) ;
 int ssl_test_result_name (int ) ;

__attribute__((used)) static int check_result(HANDSHAKE_RESULT *result, SSL_TEST_CTX *test_ctx)
{
    if (!TEST_int_eq(result->result, test_ctx->expected_result)) {
        TEST_info("ExpectedResult mismatch: expected %s, got %s.",
                  ssl_test_result_name(test_ctx->expected_result),
                  ssl_test_result_name(result->result));
        return 0;
    }
    return 1;
}
