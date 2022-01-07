
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int client_alert_sent; int client_alert_received; int server_alert_sent; int server_alert_received; int server_num_fatal_alerts_sent; int client_num_fatal_alerts_sent; } ;
struct TYPE_5__ {int expected_client_alert; int expected_server_alert; } ;
typedef TYPE_1__ SSL_TEST_CTX ;
typedef TYPE_2__ HANDSHAKE_RESULT ;


 int TEST_error (char*,int ,int ) ;
 int TEST_info (char*,int ,int ) ;
 int TEST_int_eq (int,int) ;
 int TEST_int_le (int ,int) ;
 int print_alert (int) ;

__attribute__((used)) static int check_alerts(HANDSHAKE_RESULT *result, SSL_TEST_CTX *test_ctx)
{
    if (!TEST_int_eq(result->client_alert_sent,
                     result->client_alert_received)) {
        TEST_info("Client sent alert %s but server received %s.",
                  print_alert(result->client_alert_sent),
                  print_alert(result->client_alert_received));
    }

    if (!TEST_int_eq(result->server_alert_sent,
                     result->server_alert_received)) {
        TEST_info("Server sent alert %s but client received %s.",
                  print_alert(result->server_alert_sent),
                  print_alert(result->server_alert_received));

    }


    if (test_ctx->expected_client_alert





        && (result->client_alert_sent & 0xff) != test_ctx->expected_client_alert) {
        TEST_error("ClientAlert mismatch: expected %s, got %s.",
                   print_alert(test_ctx->expected_client_alert),
                   print_alert(result->client_alert_sent));
        return 0;
    }

    if (test_ctx->expected_server_alert
        && (result->server_alert_sent & 0xff) != test_ctx->expected_server_alert) {
        TEST_error("ServerAlert mismatch: expected %s, got %s.",
                   print_alert(test_ctx->expected_server_alert),
                   print_alert(result->server_alert_sent));
        return 0;
    }

    if (!TEST_int_le(result->client_num_fatal_alerts_sent, 1))
        return 0;
    if (!TEST_int_le(result->server_num_fatal_alerts_sent, 1))
        return 0;
    return 1;
}
