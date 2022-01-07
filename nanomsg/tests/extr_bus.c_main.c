
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_SP ;
 int NN_BUS ;
 int SOCKET_ADDRESS_A ;
 int SOCKET_ADDRESS_B ;
 int errno_assert (int) ;
 int nn_assert (int) ;
 int nn_recv (int,char*,int,int ) ;
 int nn_sleep (int) ;
 int test_bind (int,int ) ;
 int test_close (int) ;
 int test_connect (int,int ) ;
 int test_send (int,char*) ;
 int test_socket (int ,int ) ;

int main ()
{
    int rc;
    int bus1;
    int bus2;
    int bus3;
    char buf [3];


    bus1 = test_socket (AF_SP, NN_BUS);
    test_bind (bus1, SOCKET_ADDRESS_A);
    bus2 = test_socket (AF_SP, NN_BUS);
    test_bind (bus2, SOCKET_ADDRESS_B);
    test_connect (bus2, SOCKET_ADDRESS_A);
    bus3 = test_socket (AF_SP, NN_BUS);
    test_connect (bus3, SOCKET_ADDRESS_A);
    test_connect (bus3, SOCKET_ADDRESS_B);


    test_send (bus1, "A");
    test_send (bus2, "AB");
    test_send (bus3, "ABC");


    rc = nn_recv (bus1, buf, 3, 0);
    errno_assert (rc >= 0);
    nn_assert (rc == 2 || rc == 3);
    rc = nn_recv (bus1, buf, 3, 0);
    errno_assert (rc >= 0);
    nn_assert (rc == 2 || rc == 3);
    rc = nn_recv (bus2, buf, 3, 0);
    errno_assert (rc >= 0);
    nn_assert (rc == 1 || rc == 3);
    rc = nn_recv (bus2, buf, 3, 0);
    errno_assert (rc >= 0);
    nn_assert (rc == 1 || rc == 3);
    rc = nn_recv (bus3, buf, 3, 0);
    errno_assert (rc >= 0);
    nn_assert (rc == 1 || rc == 2);
    rc = nn_recv (bus3, buf, 3, 0);
    errno_assert (rc >= 0);
    nn_assert (rc == 1 || rc == 2);


    nn_sleep (10);

    test_close (bus3);
    test_close (bus2);
    test_close (bus1);

    return 0;
}
