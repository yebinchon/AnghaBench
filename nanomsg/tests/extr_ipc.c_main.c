
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int opt ;


 int AF_SP ;
 scalar_t__ EADDRINUSE ;
 scalar_t__ EAGAIN ;
 scalar_t__ EINVAL ;
 int NN_DONTWAIT ;
 int NN_MSG ;
 int NN_PAIR ;
 int NN_RCVMAXSIZE ;
 int NN_SOL_SOCKET ;
 int SOCKET_ADDRESS ;
 int errno_assert (int) ;
 int free (char*) ;
 char* malloc (int) ;
 int nn_assert (int) ;
 int nn_bind (int,int ) ;
 scalar_t__ nn_errno () ;
 int nn_recv (int,void**,int ,int ) ;
 int nn_setsockopt (int,int ,int ,int*,size_t) ;
 int nn_sleep (int) ;
 int test_bind (int,int ) ;
 int test_close (int) ;
 int test_connect (int,int ) ;
 int test_recv (int,char*) ;
 int test_send (int,char*) ;
 int test_socket (int ,int ) ;

int main ()
{

    int sb;
    int sc;
    int i;
    int s1, s2;
    void * dummy_buf;
    int rc;
    int opt;
    size_t opt_sz = sizeof (opt);

    int size;
    char * buf;


    sc = test_socket (AF_SP, NN_PAIR);
    test_connect (sc, SOCKET_ADDRESS);
    test_close (sc);


    sc = test_socket (AF_SP, NN_PAIR);
    test_connect (sc, SOCKET_ADDRESS);


    nn_sleep (200);

    sb = test_socket (AF_SP, NN_PAIR);
    test_bind (sb, SOCKET_ADDRESS);


    for (i = 0; i != 1; ++i) {
        test_send (sc, "0123456789012345678901234567890123456789");
        test_recv (sb, "0123456789012345678901234567890123456789");
        test_send (sb, "0123456789012345678901234567890123456789");
        test_recv (sc, "0123456789012345678901234567890123456789");
    }


    for (i = 0; i != 100; ++i) {
        test_send (sc, "XYZ");
    }
    for (i = 0; i != 100; ++i) {
        test_recv (sb, "XYZ");
    }


    size = 10000;
    buf = malloc (size);
    for (i = 0; i < size; ++i) {
        buf[i] = 48 + i % 10;
    }
    buf[size-1] = '\0';
    test_send (sc, buf);
    test_recv (sb, buf);
    free (buf);

    test_close (sc);
    test_close (sb);


    sb = test_socket (AF_SP, NN_PAIR);
    test_bind (sb, SOCKET_ADDRESS);
    s1 = test_socket (AF_SP, NN_PAIR);
    test_connect (s1, SOCKET_ADDRESS);
    s2 = test_socket (AF_SP, NN_PAIR);
    test_connect (s2, SOCKET_ADDRESS);
    nn_sleep (100);
    test_close (s2);
    test_close (s1);
    test_close (sb);







    sb = test_socket (AF_SP, NN_PAIR);
    test_bind (sb, SOCKET_ADDRESS);
    s1 = test_socket (AF_SP, NN_PAIR);
    rc = nn_bind (s1, SOCKET_ADDRESS);
    nn_assert (rc < 0);
    errno_assert (nn_errno () == EADDRINUSE);
    sc = test_socket (AF_SP, NN_PAIR);
    test_connect (sc, SOCKET_ADDRESS);
    nn_sleep (100);
    test_send (sb, "ABC");
    test_recv (sc, "ABC");
    test_close (sb);
    test_close (sc);
    test_close (s1);



    sb = test_socket (AF_SP, NN_PAIR);
    test_bind (sb, SOCKET_ADDRESS);
    s1 = test_socket (AF_SP, NN_PAIR);
    test_connect (s1, SOCKET_ADDRESS);
    opt = 4;
    rc = nn_setsockopt (sb, NN_SOL_SOCKET, NN_RCVMAXSIZE, &opt, opt_sz);
    nn_assert (rc == 0);
    nn_sleep (100);
    test_send (s1, "ABCD");
    test_recv (sb, "ABCD");
    test_send (s1, "ABCDE");


    nn_sleep (100);
    rc = nn_recv (sb, &dummy_buf, NN_MSG, NN_DONTWAIT);
    nn_assert (rc < 0);
    errno_assert (nn_errno () == EAGAIN);
    test_close (sb);
    test_close (s1);


    sb = test_socket (AF_SP, NN_PAIR);
    opt = -1;
    rc = nn_setsockopt (sb, NN_SOL_SOCKET, NN_RCVMAXSIZE, &opt, opt_sz);
    nn_assert (rc >= 0);
    opt = -2;
    rc = nn_setsockopt (sb, NN_SOL_SOCKET, NN_RCVMAXSIZE, &opt, opt_sz);
    nn_assert (rc < 0);
    errno_assert (nn_errno () == EINVAL);
    test_close (sb);


    sc = test_socket (AF_SP, NN_PAIR);
    test_connect (sc, SOCKET_ADDRESS);
    nn_sleep (100);
    test_close (sc);


    return 0;
}
