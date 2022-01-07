
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_SP ;
 int NN_REP ;
 int NN_REQ ;
 int NN_STAT_ACCEPTED_CONNECTIONS ;
 int NN_STAT_BYTES_RECEIVED ;
 int NN_STAT_BYTES_SENT ;
 int NN_STAT_CURRENT_CONNECTIONS ;
 int NN_STAT_ESTABLISHED_CONNECTIONS ;
 int NN_STAT_MESSAGES_RECEIVED ;
 int NN_STAT_MESSAGES_SENT ;
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
    int rep1;
    int req1;
    char socket_address[128];

    test_addr_from(socket_address, "tcp", "127.0.0.1",
            get_test_port(argc, argv));


    rep1 = test_socket (AF_SP, NN_REP);
    test_bind (rep1, socket_address);
    nn_sleep (100);

    req1 = test_socket (AF_SP, NN_REQ);
    test_connect (req1, socket_address);
    nn_sleep (200);

    nn_assert (nn_get_statistic(rep1, NN_STAT_ACCEPTED_CONNECTIONS) == 1);
    nn_assert (nn_get_statistic(rep1, NN_STAT_ESTABLISHED_CONNECTIONS) == 0);
    nn_assert (nn_get_statistic(rep1, NN_STAT_CURRENT_CONNECTIONS) == 1);
    nn_assert (nn_get_statistic(rep1, NN_STAT_MESSAGES_SENT) == 0);
    nn_assert (nn_get_statistic(rep1, NN_STAT_MESSAGES_RECEIVED) == 0);

    nn_assert (nn_get_statistic(req1, NN_STAT_ACCEPTED_CONNECTIONS) == 0);
    nn_assert (nn_get_statistic(req1, NN_STAT_ESTABLISHED_CONNECTIONS) == 1);
    nn_assert (nn_get_statistic(req1, NN_STAT_CURRENT_CONNECTIONS) == 1);
    nn_assert (nn_get_statistic(req1, NN_STAT_MESSAGES_SENT) == 0);
    nn_assert (nn_get_statistic(req1, NN_STAT_MESSAGES_RECEIVED) == 0);

    test_send (req1, "ABC");
    nn_sleep (100);

    nn_assert (nn_get_statistic(req1, NN_STAT_MESSAGES_SENT) == 1);
    nn_assert (nn_get_statistic(req1, NN_STAT_BYTES_SENT) == 3);
    nn_assert (nn_get_statistic(req1, NN_STAT_MESSAGES_RECEIVED) == 0);
    nn_assert (nn_get_statistic(req1, NN_STAT_BYTES_RECEIVED) == 0);

    test_recv(rep1, "ABC");

    nn_assert (nn_get_statistic(rep1, NN_STAT_MESSAGES_SENT) == 0);
    nn_assert (nn_get_statistic(rep1, NN_STAT_BYTES_SENT) == 0);
    nn_assert (nn_get_statistic(rep1, NN_STAT_MESSAGES_RECEIVED) == 1);
    nn_assert (nn_get_statistic(rep1, NN_STAT_BYTES_RECEIVED) == 3);

    test_send (rep1, "OK");
    test_recv (req1, "OK");

    nn_assert (nn_get_statistic(req1, NN_STAT_MESSAGES_SENT) == 1);
    nn_assert (nn_get_statistic(req1, NN_STAT_BYTES_SENT) == 3);
    nn_assert (nn_get_statistic(req1, NN_STAT_MESSAGES_RECEIVED) == 1);
    nn_assert (nn_get_statistic(req1, NN_STAT_BYTES_RECEIVED) == 2);

    nn_assert (nn_get_statistic(rep1, NN_STAT_MESSAGES_SENT) == 1);
    nn_assert (nn_get_statistic(rep1, NN_STAT_BYTES_SENT) == 2);
    nn_assert (nn_get_statistic(rep1, NN_STAT_MESSAGES_RECEIVED) == 1);
    nn_assert (nn_get_statistic(rep1, NN_STAT_BYTES_RECEIVED) == 3);

    test_close (req1);

    nn_sleep (100);

    nn_assert (nn_get_statistic(rep1, NN_STAT_ACCEPTED_CONNECTIONS) == 1);
    nn_assert (nn_get_statistic(rep1, NN_STAT_ESTABLISHED_CONNECTIONS) == 0);
    nn_assert (nn_get_statistic(rep1, NN_STAT_CURRENT_CONNECTIONS) == 0);

    test_close (rep1);

    return 0;
}
