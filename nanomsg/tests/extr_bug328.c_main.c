
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_SP ;
 int NN_PAIR ;
 int NN_STAT_CURRENT_CONNECTIONS ;
 int get_test_port (int,char const**) ;
 int nn_assert (int) ;
 int nn_get_statistic (int,int ) ;
 int nn_sleep (int) ;
 int test_addr_from (char*,char*,char*,int ) ;
 int test_bind (int,char*) ;
 int test_close (int) ;
 int test_connect (int,char*) ;
 int test_recv (int,char*) ;
 int test_send (int,char*) ;
 int test_socket (int ,int ) ;

int main (int argc, const char *argv[])
{
    int sb;
    int sc;
    char socket_address[128];

    test_addr_from(socket_address, "tcp", "127.0.0.1",
            get_test_port(argc, argv));

    sb = test_socket (AF_SP, NN_PAIR);
    test_bind (sb, socket_address);
    sc = test_socket (AF_SP, NN_PAIR);
    test_connect (sc, socket_address);

    nn_sleep(100);
    test_send (sc, "ABC");
    test_recv (sb, "ABC");
    nn_assert (nn_get_statistic (sc, NN_STAT_CURRENT_CONNECTIONS) == 1);
    test_close (sb);
    nn_sleep(300);
    nn_assert (nn_get_statistic (sc, NN_STAT_CURRENT_CONNECTIONS) == 0);
    test_close (sc);

    return 0;
}
