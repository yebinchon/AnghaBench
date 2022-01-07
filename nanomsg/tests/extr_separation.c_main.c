
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timeo ;


 int AF_SP ;
 scalar_t__ ETIMEDOUT ;
 int NN_PAIR ;
 int NN_PULL ;
 int NN_SNDTIMEO ;
 int NN_SOL_SOCKET ;
 char* SOCKET_ADDRESS_INPROC ;
 char* SOCKET_ADDRESS_IPC ;
 int errno_assert (int) ;
 int get_test_port (int,char const**) ;
 scalar_t__ nn_errno () ;
 int nn_send (int,char*,int,int ) ;
 int test_addr_from (char*,char*,char*,int ) ;
 int test_bind (int,char*) ;
 int test_close (int) ;
 int test_connect (int,char*) ;
 int test_setsockopt (int,int ,int ,int*,int) ;
 int test_socket (int ,int ) ;

int main (int argc, const char *argv[])
{
    int rc;
    int pair;
    int pull;
    int timeo;
    char socket_address_tcp[128];

    test_addr_from(socket_address_tcp, "tcp", "127.0.0.1",
            get_test_port(argc, argv));


    pair = test_socket (AF_SP, NN_PAIR);
    test_bind (pair, SOCKET_ADDRESS_INPROC);
    pull = test_socket (AF_SP, NN_PULL);
    test_connect (pull, SOCKET_ADDRESS_INPROC);
    timeo = 100;
    test_setsockopt (pair, NN_SOL_SOCKET, NN_SNDTIMEO,
        &timeo, sizeof (timeo));
    rc = nn_send (pair, "ABC", 3, 0);
    errno_assert (rc < 0 && nn_errno () == ETIMEDOUT);
    test_close (pull);
    test_close (pair);


    pull = test_socket (AF_SP, NN_PULL);
    test_connect (pull, SOCKET_ADDRESS_INPROC);
    pair = test_socket (AF_SP, NN_PAIR);
    test_bind (pair, SOCKET_ADDRESS_INPROC);
    timeo = 100;
    test_setsockopt (pair, NN_SOL_SOCKET, NN_SNDTIMEO,
        &timeo, sizeof (timeo));
    rc = nn_send (pair, "ABC", 3, 0);
    errno_assert (rc < 0 && nn_errno () == ETIMEDOUT);
    test_close (pull);
    test_close (pair);




    pair = test_socket (AF_SP, NN_PAIR);
    test_bind (pair, SOCKET_ADDRESS_IPC);
    pull = test_socket (AF_SP, NN_PULL);
    test_connect (pull, SOCKET_ADDRESS_IPC);
    timeo = 100;
    test_setsockopt (pair, NN_SOL_SOCKET, NN_SNDTIMEO,
        &timeo, sizeof (timeo));
    rc = nn_send (pair, "ABC", 3, 0);
    errno_assert (rc < 0 && nn_errno () == ETIMEDOUT);
    test_close (pull);
    test_close (pair);




    pair = test_socket (AF_SP, NN_PAIR);
    test_bind (pair, socket_address_tcp);
    pull = test_socket (AF_SP, NN_PULL);
    test_connect (pull, socket_address_tcp);
    timeo = 100;
    test_setsockopt (pair, NN_SOL_SOCKET, NN_SNDTIMEO,
        &timeo, sizeof (timeo));
    rc = nn_send (pair, "ABC", 3, 0);
    errno_assert (rc < 0 && nn_errno () == ETIMEDOUT);
    test_close (pull);
    test_close (pair);

    return 0;
}
