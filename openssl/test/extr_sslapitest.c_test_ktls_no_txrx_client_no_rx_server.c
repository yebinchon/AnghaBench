
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int execute_test_ktls (int ,int ,int,int ) ;

__attribute__((used)) static int test_ktls_no_txrx_client_no_rx_server(void)
{
    return execute_test_ktls(0, 0, 1, 0);
}
