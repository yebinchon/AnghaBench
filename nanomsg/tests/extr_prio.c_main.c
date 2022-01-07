
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sndprio ;
typedef int rcvprio ;


 int AF_SP ;
 scalar_t__ EAGAIN ;
 int NN_DONTWAIT ;
 int NN_PULL ;
 int NN_PUSH ;
 int NN_RCVPRIO ;
 int NN_SNDPRIO ;
 int NN_SOL_SOCKET ;
 int SOCKET_ADDRESS_A ;
 int SOCKET_ADDRESS_B ;
 int errno_assert (int) ;
 int nn_assert (int) ;
 scalar_t__ nn_errno () ;
 int nn_send (int,char*,int,int ) ;
 int nn_setsockopt (int,int ,int ,int*,int) ;
 int nn_sleep (int) ;
 int test_bind (int,int ) ;
 int test_close (int) ;
 int test_connect (int,int ) ;
 int test_recv (int,char*) ;
 int test_send (int,char*) ;
 int test_socket (int ,int ) ;

int main ()
{
    int rc;
    int push1;
    int push2;
    int pull1;
    int pull2;
    int sndprio;
    int rcvprio;



    pull1 = test_socket (AF_SP, NN_PULL);
    test_bind (pull1, SOCKET_ADDRESS_A);
    pull2 = test_socket (AF_SP, NN_PULL);
    test_bind (pull2, SOCKET_ADDRESS_B);
    push1 = test_socket (AF_SP, NN_PUSH);
    sndprio = 1;
    rc = nn_setsockopt (push1, NN_SOL_SOCKET, NN_SNDPRIO,
        &sndprio, sizeof (sndprio));
    errno_assert (rc == 0);
    test_connect (push1, SOCKET_ADDRESS_A);
    sndprio = 2;
    rc = nn_setsockopt (push1, NN_SOL_SOCKET, NN_SNDPRIO,
        &sndprio, sizeof (sndprio));
    errno_assert (rc == 0);
    test_connect (push1, SOCKET_ADDRESS_B);

    test_send (push1, "ABC");
    test_send (push1, "DEF");
    test_recv (pull1, "ABC");
    test_recv (pull1, "DEF");

    test_close (pull1);
    test_close (push1);
    test_close (pull2);



    push1 = test_socket (AF_SP, NN_PUSH);
    test_bind (push1, SOCKET_ADDRESS_A);
    push2 = test_socket (AF_SP, NN_PUSH);
    test_bind (push2, SOCKET_ADDRESS_B);
    pull1 = test_socket (AF_SP, NN_PULL);
    rcvprio = 2;
    rc = nn_setsockopt (pull1, NN_SOL_SOCKET, NN_RCVPRIO,
        &rcvprio, sizeof (rcvprio));
    errno_assert (rc == 0);
    test_connect (pull1, SOCKET_ADDRESS_A);
    rcvprio = 1;
    rc = nn_setsockopt (pull1, NN_SOL_SOCKET, NN_RCVPRIO,
        &rcvprio, sizeof (rcvprio));
    errno_assert (rc == 0);
    test_connect (pull1, SOCKET_ADDRESS_B);

    test_send (push1, "ABC");
    test_send (push2, "DEF");
    nn_sleep (100);
    test_recv (pull1, "DEF");
    test_recv (pull1, "ABC");

    test_close (pull1);
    test_close (push2);
    test_close (push1);



    push1 = test_socket (AF_SP, NN_PUSH);
    test_bind (push1, SOCKET_ADDRESS_A);
    pull1 = test_socket (AF_SP, NN_PULL);
    test_connect (pull1, SOCKET_ADDRESS_A);

    test_send (push1, "ABC");
    test_recv (pull1, "ABC");
    test_close (pull1);

    rc = nn_send (push1, "ABC", 3, NN_DONTWAIT);
    nn_assert (rc == -1 && nn_errno() == EAGAIN);

    pull1 = test_socket (AF_SP, NN_PULL);
    test_connect (pull1, SOCKET_ADDRESS_A);

    test_send (push1, "ABC");
    test_recv (pull1, "ABC");
    test_close (pull1);
    test_close (push1);

    return 0;
}
