
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TLS1_VERSION ;
 int TLS_client_method () ;
 int TLS_server_method () ;
 int execute_test_large_message (int ,int ,int ,int ,int ) ;

__attribute__((used)) static int test_large_message_tls(void)
{
    return execute_test_large_message(TLS_server_method(), TLS_client_method(),
                                      TLS1_VERSION, 0, 0);
}
