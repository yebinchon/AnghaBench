
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_thread {int dummy; } ;
typedef int sndtimeo ;
typedef int rcvtimeo ;


 int AF_SP ;
 int NN_PUB ;
 int NN_RCVTIMEO ;
 int NN_SNDTIMEO ;
 int NN_SOL_SOCKET ;
 int NN_SUB ;
 int NN_SUB_SUBSCRIBE ;
 int TEST_LOOPS ;
 int TEST_THREADS ;
 int get_test_port (int,char const**) ;
 int nn_sleep (int) ;
 int nn_thread_init (struct nn_thread*,int ,int*) ;
 int nn_thread_term (struct nn_thread*) ;
 int routine ;
 int socket_address ;
 int test_addr_from (int ,char*,char*,int ) ;
 int test_bind (int,int ) ;
 int test_close (int) ;
 int test_connect (int,int ) ;
 int test_send (int,char*) ;
 int test_setsockopt (int,int ,int ,...) ;
 int test_socket (int ,int ) ;

int main (int argc, const char *argv[])
{
    int i;
    int j;
    int s;
    int sb;
    int rcvtimeo = 10;
    int sndtimeo = 0;
    int sockets [TEST_THREADS];
    struct nn_thread threads [TEST_THREADS];

    test_addr_from (socket_address, "ws", "127.0.0.1",
        get_test_port (argc, argv));

    for (i = 0; i != TEST_LOOPS; ++i) {

        sb = test_socket (AF_SP, NN_PUB);
        test_bind (sb, socket_address);
        test_setsockopt (sb, NN_SOL_SOCKET, NN_SNDTIMEO,
            &sndtimeo, sizeof (sndtimeo));

        for (j = 0; j < TEST_THREADS; j++){
            s = test_socket (AF_SP, NN_SUB);
            test_setsockopt (s, NN_SOL_SOCKET, NN_RCVTIMEO,
                &rcvtimeo, sizeof (rcvtimeo));
            test_setsockopt (s, NN_SUB, NN_SUB_SUBSCRIBE, "", 0);
            test_connect (s, socket_address);
            sockets [j] = s;
            nn_thread_init (&threads [j], routine, &sockets [j]);
        }


        nn_sleep (100);

        test_send (sb, "");

        for (j = 0; j < TEST_THREADS; j++) {
            test_close (sockets [j]);
            nn_thread_term (&threads [j]);
        }

        test_close (sb);
    }

    return 0;
}
