
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_SP ;
 int NN_PULL ;
 int NN_PUSH ;
 int SOCKET_ADDRESS ;
 int nn_sleep (int) ;
 int test_bind (int,int ) ;
 int test_close (int) ;
 int test_connect (int,int ) ;
 int test_recv (int,char*) ;
 int test_send (int,char*) ;
 int test_socket (int ,int ) ;

int main ()
{
    int push1;
    int push2;
    int pull1;
    int pull2;



    push1 = test_socket (AF_SP, NN_PUSH);
    test_bind (push1, SOCKET_ADDRESS);
    pull1 = test_socket (AF_SP, NN_PULL);
    test_connect (pull1, SOCKET_ADDRESS);
    pull2 = test_socket (AF_SP, NN_PULL);
    test_connect (pull2, SOCKET_ADDRESS);



    nn_sleep (10);

    test_send (push1, "ABC");
    test_send (push1, "DEF");

    test_recv (pull1, "ABC");
    test_recv (pull2, "DEF");

    test_close (push1);
    test_close (pull1);
    test_close (pull2);



    pull1 = test_socket (AF_SP, NN_PULL);
    test_bind (pull1, SOCKET_ADDRESS);
    push1 = test_socket (AF_SP, NN_PUSH);
    test_connect (push1, SOCKET_ADDRESS);
    push2 = test_socket (AF_SP, NN_PUSH);
    test_connect (push2, SOCKET_ADDRESS);

    test_send (push1, "ABC");
    test_send (push2, "DEF");

    test_recv (pull1, "ABC");
    test_recv (pull1, "DEF");

    test_close (pull1);
    test_close (push1);
    test_close (push2);

    return 0;
}
