
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_thread {int dummy; } ;


 int AF_SP ;
 int NN_RESPONDENT ;
 int NN_SURVEYOR ;
 int device5 ;
 int device6 ;
 int get_test_port (int,char const**) ;
 int nn_sleep (int) ;
 int nn_term () ;
 int nn_thread_init (struct nn_thread*,int ,int *) ;
 int nn_thread_term (struct nn_thread*) ;
 int socket_address_h ;
 int socket_address_i ;
 int socket_address_j ;
 int test_addr_from (int ,char*,char*,int) ;
 int test_close (int) ;
 int test_connect (int,int ) ;
 int test_recv (int,char*) ;
 int test_send (int,char*) ;
 int test_socket (int ,int ) ;

int main (int argc, const char *argv[])
{
    int end0;
    int end1;
    struct nn_thread thread5;
    struct nn_thread thread6;

    int port = get_test_port(argc, argv);

    test_addr_from(socket_address_h, "tcp", "127.0.0.1", port);
    test_addr_from(socket_address_i, "tcp", "127.0.0.1", port + 1);
    test_addr_from(socket_address_j, "tcp", "127.0.0.1", port + 2);




    nn_thread_init (&thread5, device5, ((void*)0));
    nn_thread_init (&thread6, device6, ((void*)0));


    end0 = test_socket (AF_SP, NN_SURVEYOR);
    test_connect (end0, socket_address_h);
    end1 = test_socket (AF_SP, NN_RESPONDENT);
    test_connect (end1, socket_address_j);


    nn_sleep (1000);


    test_send (end0, "XYZ");
    test_recv (end1, "XYZ");


    test_send (end1, "REPLYXYZ");
    test_recv (end0, "REPLYXYZ");


    test_close (end0);
    test_close (end1);


    nn_term ();
    nn_thread_term (&thread5);
    nn_thread_term (&thread6);

    return 0;
}
