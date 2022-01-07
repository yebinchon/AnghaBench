
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_thread {int dummy; } ;


 int AF_SP ;
 int NN_REP ;
 int NN_REQ ;
 int device4 ;
 int get_test_port (int,char const**) ;
 int nn_sleep (int) ;
 int nn_term () ;
 int nn_thread_init (struct nn_thread*,int ,int *) ;
 int nn_thread_term (struct nn_thread*) ;
 int socket_address_f ;
 int socket_address_g ;
 int test_addr_from (int ,char*,char*,int) ;
 int test_close (int) ;
 int test_connect (int,int ) ;
 int test_recv (int,char*) ;
 int test_send (int,char*) ;
 int test_socket (int ,int ) ;

int main (int argc, const char *argv[])
{
    int endf;
    int endg;
    struct nn_thread thread4;

    int port = get_test_port(argc, argv);

    test_addr_from(socket_address_f, "tcp", "127.0.0.1", port);
    test_addr_from(socket_address_g, "tcp", "127.0.0.1", port + 1);




    nn_thread_init (&thread4, device4, ((void*)0));


    endf = test_socket (AF_SP, NN_REQ);
    test_connect (endf, socket_address_f);
    endg = test_socket (AF_SP, NN_REP);
    test_connect (endg, socket_address_g);


    nn_sleep (100);


    test_send (endf, "XYZ");
    test_recv (endg, "XYZ");


    test_send (endg, "REPLYXYZ");
    test_recv (endf, "REPLYXYZ");


    test_close (endg);
    test_close (endf);


    nn_term ();
    nn_thread_term (&thread4);

    return 0;
}
