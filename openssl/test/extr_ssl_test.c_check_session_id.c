
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ session_id; } ;
struct TYPE_5__ {scalar_t__ session_id_expected; } ;
typedef TYPE_1__ SSL_TEST_CTX ;
typedef TYPE_2__ HANDSHAKE_RESULT ;


 scalar_t__ SSL_TEST_SESSION_ID_IGNORE ;
 int TEST_info (char*,int ,int ) ;
 int TEST_int_eq (scalar_t__,scalar_t__) ;
 int ssl_session_id_name (scalar_t__) ;

__attribute__((used)) static int check_session_id(HANDSHAKE_RESULT *result, SSL_TEST_CTX *test_ctx)
{
    if (test_ctx->session_id_expected == SSL_TEST_SESSION_ID_IGNORE)
        return 1;
    if (!TEST_int_eq(result->session_id, test_ctx->session_id_expected)) {
        TEST_info("Client SessionIdExpected mismatch, expected %s, got %s\n.",
                ssl_session_id_name(test_ctx->session_id_expected),
                ssl_session_id_name(result->session_id));
        return 0;
    }
    return 1;
}
