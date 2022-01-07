
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int client_npn_negotiated; int server_npn_negotiated; } ;
struct TYPE_5__ {int expected_npn_protocol; } ;
typedef TYPE_1__ SSL_TEST_CTX ;
typedef TYPE_2__ HANDSHAKE_RESULT ;


 int TEST_str_eq (int ,int ) ;

__attribute__((used)) static int check_npn(HANDSHAKE_RESULT *result, SSL_TEST_CTX *test_ctx)
{
    int ret = 1;
    if (!TEST_str_eq(result->client_npn_negotiated,
                     result->server_npn_negotiated))
        ret = 0;
    if (!TEST_str_eq(test_ctx->expected_npn_protocol,
                     result->client_npn_negotiated))
        ret = 0;
    return ret;
}
