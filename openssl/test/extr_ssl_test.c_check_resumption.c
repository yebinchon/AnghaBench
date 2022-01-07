
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int client_resumed; int server_resumed; } ;
struct TYPE_5__ {int resumption_expected; } ;
typedef TYPE_1__ SSL_TEST_CTX ;
typedef TYPE_2__ HANDSHAKE_RESULT ;


 int TEST_int_eq (int ,int ) ;

__attribute__((used)) static int check_resumption(HANDSHAKE_RESULT *result, SSL_TEST_CTX *test_ctx)
{
    if (!TEST_int_eq(result->client_resumed, result->server_resumed))
        return 0;
    if (!TEST_int_eq(result->client_resumed, test_ctx->resumption_expected))
        return 0;
    return 1;
}
