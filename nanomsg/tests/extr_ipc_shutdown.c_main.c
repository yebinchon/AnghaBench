
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_thread {int dummy; } ;


 int AF_SP ;
 int NN_DONTWAIT ;
 int NN_PUB ;
 int NN_PUSH ;
 int SIGPIPE ;
 int SIG_IGN ;
 int SOCKET_ADDRESS ;
 int TEST2_THREAD_COUNT ;
 int TEST_LOOPS ;
 int THREAD_COUNT ;
 int active ;
 int nn_send (int,char*,int,int ) ;
 int nn_sleep (int ) ;
 int nn_thread_init (struct nn_thread*,int ,int *) ;
 int nn_thread_term (struct nn_thread*) ;
 int routine ;
 int routine2 ;
 int signal (int ,int ) ;
 int test_bind (int,int ) ;
 int test_close (int) ;
 int test_socket (int ,int ) ;

int main ()
{


    int sb;
    int i;
    int j;
    struct nn_thread threads [THREAD_COUNT];







    sb = test_socket (AF_SP, NN_PUB);
    test_bind (sb, SOCKET_ADDRESS);

    for (j = 0; j != TEST_LOOPS; ++j) {
        for (i = 0; i != THREAD_COUNT; ++i)
            nn_thread_init (&threads [i], routine, ((void*)0));
        for (i = 0; i != THREAD_COUNT; ++i)
            nn_thread_term (&threads [i]);
    }

    test_close (sb);



    sb = test_socket (AF_SP, NN_PUSH);
    test_bind (sb, SOCKET_ADDRESS);

    for (j = 0; j != TEST_LOOPS; ++j) {
        for (i = 0; i != TEST2_THREAD_COUNT; ++i)
            nn_thread_init (&threads [i], routine2, ((void*)0));
        active = TEST2_THREAD_COUNT;

        while (active) {
            (void) nn_send (sb, "hello", 5, NN_DONTWAIT);
            nn_sleep (0);
        }

        for (i = 0; i != TEST2_THREAD_COUNT; ++i)
            nn_thread_term (&threads [i]);
    }

    test_close (sb);


    return 0;
}
