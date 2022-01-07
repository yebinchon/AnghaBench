
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_thread {int dummy; } ;


 int AF_SP ;
 int NN_PULL ;
 int TEST_LOOPS ;
 int get_test_port (int,char const**) ;
 int nn_sleep (int) ;
 int nn_thread_init (struct nn_thread*,int ,int*) ;
 int nn_thread_term (struct nn_thread*) ;
 int routine ;
 int test_addr_from (char*,char*,char*,int ) ;
 int test_bind (int,char*) ;
 int test_close (int) ;
 int test_socket (int ,int ) ;

int main (int argc, const char *argv[])
{
    int sb;
    int i;
    struct nn_thread thread;
    char socket_address[128];

    test_addr_from(socket_address, "tcp", "127.0.0.1",
            get_test_port(argc, argv));

    for (i = 0; i != TEST_LOOPS; ++i) {
        sb = test_socket (AF_SP, NN_PULL);
        test_bind (sb, socket_address);
        nn_sleep (100);
        nn_thread_init (&thread, routine, &sb);
        nn_sleep (100);
        test_close (sb);
        nn_thread_term (&thread);
    }

    return 0;
}
