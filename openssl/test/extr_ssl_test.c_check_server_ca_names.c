
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int server_ca_names; } ;
struct TYPE_5__ {int expected_server_ca_names; } ;
typedef TYPE_1__ SSL_TEST_CTX ;
typedef TYPE_2__ HANDSHAKE_RESULT ;


 int check_ca_names (char*,int ,int ) ;

__attribute__((used)) static int check_server_ca_names(HANDSHAKE_RESULT *result,
                                 SSL_TEST_CTX *test_ctx)
{
    return check_ca_names("Server CA names",
                          test_ctx->expected_server_ca_names,
                          result->server_ca_names);
}
