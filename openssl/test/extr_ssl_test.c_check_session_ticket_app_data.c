
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * result_session_ticket_app_data; } ;
struct TYPE_5__ {int * expected_session_ticket_app_data; } ;
typedef TYPE_1__ SSL_TEST_CTX ;
typedef TYPE_2__ HANDSHAKE_RESULT ;


 int TEST_str_eq (int *,int *) ;
 size_t strlen (int *) ;

__attribute__((used)) static int check_session_ticket_app_data(HANDSHAKE_RESULT *result,
                                         SSL_TEST_CTX *test_ctx)
{
    size_t result_len = 0;
    size_t expected_len = 0;


    if (result->result_session_ticket_app_data != ((void*)0))
        result_len = strlen(result->result_session_ticket_app_data);
    if (test_ctx->expected_session_ticket_app_data != ((void*)0))
        expected_len = strlen(test_ctx->expected_session_ticket_app_data);
    if (result_len == 0 && expected_len == 0)
        return 1;

    if (!TEST_str_eq(result->result_session_ticket_app_data,
                     test_ctx->expected_session_ticket_app_data))
        return 0;

    return 1;
}
