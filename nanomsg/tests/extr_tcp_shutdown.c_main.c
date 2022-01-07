
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct nn_thread {int dummy; } ;
typedef int ms ;
struct TYPE_4__ {scalar_t__ n; } ;


 int AF_SP ;
 int NN_PUB ;
 int NN_PUSH ;
 int NN_SNDTIMEO ;
 int NN_SOL_SOCKET ;
 int SIGPIPE ;
 int SIG_IGN ;
 int TEST2_THREAD_COUNT ;
 int TEST_LOOPS ;
 int THREAD_COUNT ;
 TYPE_1__ active ;
 int get_test_port (int,char const**) ;
 int nn_atomic_init (TYPE_1__*,int) ;
 int nn_atomic_term (TYPE_1__*) ;
 int nn_send (int,char*,int,int ) ;
 int nn_sleep (int) ;
 int nn_thread_init (struct nn_thread*,int ,struct nn_thread*) ;
 int nn_thread_term (struct nn_thread*) ;
 int routine ;
 int routine2 ;
 int signal (int ,int ) ;
 int socket_address ;
 int test_addr_from (int ,char*,char*,int ) ;
 int test_bind (int,int ) ;
 int test_close (int) ;
 int test_setsockopt (int,int ,int ,int*,int) ;
 int test_socket (int ,int ) ;

int main (int argc, const char *argv[])
{
    int sb;
    int i;
    int j;
    struct nn_thread threads [THREAD_COUNT];

    test_addr_from(socket_address, "tcp", "127.0.0.1",
            get_test_port(argc, argv));







    sb = test_socket (AF_SP, NN_PUB);
    test_bind (sb, socket_address);

    for (j = 0; j != TEST_LOOPS; ++j) {
        for (i = 0; i != THREAD_COUNT; ++i)
            nn_thread_init (&threads [i], routine, ((void*)0));
        for (i = 0; i != THREAD_COUNT; ++i) {
            nn_thread_term (&threads [i]);
 }
    }

    test_close (sb);



    sb = test_socket (AF_SP, NN_PUSH);
    test_bind (sb, socket_address);

    for (j = 0; j != TEST_LOOPS; ++j) {
 int ms;
        nn_atomic_init(&active, TEST2_THREAD_COUNT);
        for (i = 0; i != TEST2_THREAD_COUNT; ++i)
            nn_thread_init (&threads [i], routine2, &threads[i]);

 nn_sleep(100);
 ms = 200;
 test_setsockopt (sb, NN_SOL_SOCKET, NN_SNDTIMEO, &ms, sizeof (ms));
        while (active.n) {
            (void) nn_send (sb, "hello", 5, 0);
        }

        for (i = 0; i != TEST2_THREAD_COUNT; ++i)
            nn_thread_term (&threads [i]);
        nn_atomic_term(&active);
    }

    test_close (sb);

    return 0;
}
