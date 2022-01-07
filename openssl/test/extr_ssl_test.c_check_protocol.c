
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ client_protocol; scalar_t__ server_protocol; } ;
struct TYPE_5__ {scalar_t__ expected_protocol; } ;
typedef TYPE_1__ SSL_TEST_CTX ;
typedef TYPE_2__ HANDSHAKE_RESULT ;


 int TEST_info (char*,int ,int ) ;
 int TEST_int_eq (scalar_t__,scalar_t__) ;
 int ssl_protocol_name (scalar_t__) ;

__attribute__((used)) static int check_protocol(HANDSHAKE_RESULT *result, SSL_TEST_CTX *test_ctx)
{
    if (!TEST_int_eq(result->client_protocol, result->server_protocol)) {
        TEST_info("Client has protocol %s but server has %s.",
                  ssl_protocol_name(result->client_protocol),
                  ssl_protocol_name(result->server_protocol));
        return 0;
    }

    if (test_ctx->expected_protocol) {
        if (!TEST_int_eq(result->client_protocol,
                         test_ctx->expected_protocol)) {
            TEST_info("Protocol mismatch: expected %s, got %s.\n",
                      ssl_protocol_name(test_ctx->expected_protocol),
                      ssl_protocol_name(result->client_protocol));
            return 0;
        }
    }
    return 1;
}
