
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DTLS1_VERSION ;
 int DTLS_client_method () ;
 int DTLS_server_method () ;
 int execute_test_large_message (int ,int ,int ,int ,int ) ;

__attribute__((used)) static int test_large_message_dtls(void)
{




    return execute_test_large_message(DTLS_server_method(),
                                      DTLS_client_method(),
                                      DTLS1_VERSION, 0, 0);
}
