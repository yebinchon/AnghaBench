
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_thread {int dummy; } ;


 int AF_SP ;
 int NN_PAIR ;
 int SOCKET_ADDRESS ;
 int nn_thread_init (struct nn_thread*,int ,int *) ;
 int nn_thread_term (struct nn_thread*) ;
 int sb ;
 int sc ;
 int test_bind (int ,int ) ;
 int test_close (int ) ;
 int test_connect (int ,int ) ;
 int test_recv (int ,char*) ;
 int test_socket (int ,int ) ;
 int worker ;

int main ()
{
    struct nn_thread thread;

    sb = test_socket (AF_SP, NN_PAIR);
    test_bind (sb, SOCKET_ADDRESS);
    sc = test_socket (AF_SP, NN_PAIR);
    test_connect (sc, SOCKET_ADDRESS);

    nn_thread_init (&thread, worker, ((void*)0));

    test_recv (sb, "ABC");
    test_recv (sb, "ABC");

    nn_thread_term (&thread);

    test_close (sc);
    test_close (sb);

    return 0;
}
