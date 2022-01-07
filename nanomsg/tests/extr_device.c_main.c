
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timeo ;
struct nn_thread {int dummy; } ;


 int AF_SP ;
 int ETIMEDOUT ;
 int NN_BUS ;
 int NN_PAIR ;
 int NN_PULL ;
 int NN_PUSH ;
 int NN_RCVTIMEO ;
 int NN_SOL_SOCKET ;
 int SOCKET_ADDRESS_A ;
 int SOCKET_ADDRESS_B ;
 int SOCKET_ADDRESS_C ;
 int SOCKET_ADDRESS_D ;
 int SOCKET_ADDRESS_E ;
 int device1 ;
 int device2 ;
 int device3 ;
 int nn_sleep (int) ;
 int nn_term () ;
 int nn_thread_init (struct nn_thread*,int ,int *) ;
 int nn_thread_term (struct nn_thread*) ;
 int test_close (int) ;
 int test_connect (int,int ) ;
 int test_drop (int,int ) ;
 int test_recv (int,char*) ;
 int test_send (int,char*) ;
 int test_setsockopt (int,int ,int ,int*,int) ;
 int test_socket (int ,int ) ;

int main ()
{
    int enda;
    int endb;
    int endc;
    int endd;
    int ende1;
    int ende2;
    struct nn_thread thread1;
    struct nn_thread thread2;
    struct nn_thread thread3;
    int timeo;




    nn_thread_init (&thread1, device1, ((void*)0));


    enda = test_socket (AF_SP, NN_PAIR);
    test_connect (enda, SOCKET_ADDRESS_A);
    endb = test_socket (AF_SP, NN_PAIR);
    test_connect (endb, SOCKET_ADDRESS_B);


    test_send (enda, "ABC");
    test_recv (endb, "ABC");
    test_send (endb, "ABC");
    test_recv (enda, "ABC");


    test_close (endb);
    test_close (enda);




    nn_thread_init (&thread2, device2, ((void*)0));


    endc = test_socket (AF_SP, NN_PUSH);
    test_connect (endc, SOCKET_ADDRESS_C);
    endd = test_socket (AF_SP, NN_PULL);
    test_connect (endd, SOCKET_ADDRESS_D);


    test_send (endc, "XYZ");
    test_recv (endd, "XYZ");


    test_close (endd);
    test_close (endc);




    nn_thread_init (&thread3, device3, ((void*)0));


    ende1 = test_socket (AF_SP, NN_BUS);
    test_connect (ende1, SOCKET_ADDRESS_E);
    ende2 = test_socket (AF_SP, NN_BUS);
    test_connect (ende2, SOCKET_ADDRESS_E);


    nn_sleep (100);


    test_send (ende1, "KLM");
    test_recv (ende2, "KLM");



    timeo = 100;
    test_setsockopt (ende1, NN_SOL_SOCKET, NN_RCVTIMEO,
       &timeo, sizeof (timeo));
    test_drop (ende1, ETIMEDOUT);


    test_close (ende2);
    test_close (ende1);


    nn_term ();
    nn_thread_term (&thread1);
    nn_thread_term (&thread2);
    nn_thread_term (&thread3);

    return 0;
}
