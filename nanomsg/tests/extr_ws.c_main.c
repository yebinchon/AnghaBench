
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int opt ;


 int AF_SP ;
 scalar_t__ EADDRINUSE ;
 scalar_t__ EINVAL ;
 scalar_t__ ENODEV ;
 int ETIMEDOUT ;
 int NN_PAIR ;
 int NN_RCVMAXSIZE ;
 int NN_RCVTIMEO ;
 int NN_SNDTIMEO ;
 int NN_SOL_SOCKET ;
 int NN_WS ;
 int NN_WS_MSG_TYPE ;
 int NN_WS_MSG_TYPE_BINARY ;
 int errno_assert (int) ;
 int get_test_port (int,char const**) ;
 int nn_assert (int) ;
 int nn_bind (int,char*) ;
 int nn_connect (int,char*) ;
 scalar_t__ nn_errno () ;
 int nn_getsockopt (int,int ,int ,int*,size_t*) ;
 int nn_setsockopt (int,int ,int ,int*,int) ;
 int nn_sleep (int) ;
 char* socket_address ;
 int test_addr_from (char*,char*,char*,int ) ;
 int test_bind (int,char*) ;
 int test_close (int) ;
 int test_connect (int,char*) ;
 int test_drop (int,int ) ;
 int test_recv (int,char*) ;
 int test_send (int,char*) ;
 int test_setsockopt (int,int ,int ,int*,int) ;
 int test_socket (int ,int ) ;
 int test_text () ;

int main (int argc, const char *argv[])
{
    int rc;
    int sb;
    int sc;
    int sb2;
    int opt;
    size_t sz;
    int i;
    char any_address[128];

    test_addr_from (socket_address, "ws", "127.0.0.1",
            get_test_port (argc, argv));

    test_addr_from (any_address, "ws", "*",
            get_test_port (argc, argv));


    sb = test_socket (AF_SP, NN_PAIR);
    test_bind (sb, any_address);
    test_close (sb);



    sc = test_socket (AF_SP, NN_PAIR);
    test_connect (sc, socket_address);
    test_close (sc);


    sc = test_socket (AF_SP, NN_PAIR);


    sz = sizeof (opt);
    rc = nn_getsockopt (sc, NN_WS, NN_WS_MSG_TYPE, &opt, &sz);
    errno_assert (rc == 0);
    nn_assert (sz == sizeof (opt));
    nn_assert (opt == NN_WS_MSG_TYPE_BINARY);


    rc = nn_connect (sc, "ws://127.0.0.1");
    errno_assert (rc >= 0);


    rc = nn_connect (sc, "ws://*:");
    nn_assert (rc < 0);
    errno_assert (nn_errno () == EINVAL);
    rc = nn_connect (sc, "ws://*:1000000");
    nn_assert (rc < 0);
    errno_assert (nn_errno () == EINVAL);
    rc = nn_connect (sc, "ws://*:some_port");
    nn_assert (rc < 0);
    rc = nn_connect (sc, "ws://eth10000;127.0.0.1:5555");
    nn_assert (rc < 0);
    errno_assert (nn_errno () == ENODEV);

    rc = nn_bind (sc, "ws://127.0.0.1:");
    nn_assert (rc < 0);
    errno_assert (nn_errno () == EINVAL);
    rc = nn_bind (sc, "ws://127.0.0.1:1000000");
    nn_assert (rc < 0);
    errno_assert (nn_errno () == EINVAL);
    rc = nn_bind (sc, "ws://eth10000:5555");
    nn_assert (rc < 0);
    errno_assert (nn_errno () == ENODEV);

    rc = nn_connect (sc, "ws://:5555");
    nn_assert (rc < 0);
    errno_assert (nn_errno () == EINVAL);
    rc = nn_connect (sc, "ws://-hostname:5555");
    nn_assert (rc < 0);
    errno_assert (nn_errno () == EINVAL);
    rc = nn_connect (sc, "ws://abc.123.---.#:5555");
    nn_assert (rc < 0);
    errno_assert (nn_errno () == EINVAL);
    rc = nn_connect (sc, "ws://[::1]:5555");
    nn_assert (rc < 0);
    errno_assert (nn_errno () == EINVAL);
    rc = nn_connect (sc, "ws://abc...123:5555");
    nn_assert (rc < 0);
    errno_assert (nn_errno () == EINVAL);
    rc = nn_connect (sc, "ws://.123:5555");
    nn_assert (rc < 0);
    errno_assert (nn_errno () == EINVAL);

    test_close (sc);

    sb = test_socket (AF_SP, NN_PAIR);
    test_bind (sb, socket_address);
    sc = test_socket (AF_SP, NN_PAIR);
    test_connect (sc, socket_address);


    for (i = 0; i != 100; ++i) {

        test_send (sc, "ABC");
        test_recv (sb, "ABC");

        test_send (sb, "DEF");
        test_recv (sc, "DEF");
    }


    for (i = 0; i != 100; ++i) {
        test_send (sc, "0123456789012345678901234567890123456789");
    }
    for (i = 0; i != 100; ++i) {
        test_recv (sb, "0123456789012345678901234567890123456789");
    }

    test_close (sc);
    test_close (sb);


    sb = test_socket (AF_SP, NN_PAIR);
    test_bind (sb, socket_address);
    sb2 = test_socket (AF_SP, NN_PAIR);

    rc = nn_bind (sb2, socket_address);
    nn_assert (rc < 0);
    errno_assert (nn_errno () == EADDRINUSE);
    test_close(sb);
    test_close(sb2);


    sb = test_socket (AF_SP, NN_PAIR);
    opt = -1;
    rc = nn_setsockopt (sb, NN_SOL_SOCKET, NN_RCVMAXSIZE, &opt, sizeof (opt));
    nn_assert (rc >= 0);
    opt = -2;
    rc = nn_setsockopt (sb, NN_SOL_SOCKET, NN_RCVMAXSIZE, &opt, sizeof (opt));
    nn_assert (rc < 0);
    errno_assert (nn_errno () == EINVAL);
    test_close (sb);


    sb = test_socket (AF_SP, NN_PAIR);
    test_bind (sb, socket_address);
    sc = test_socket (AF_SP, NN_PAIR);
    test_connect (sc, socket_address);
    opt = 1000;
    test_setsockopt (sc, NN_SOL_SOCKET, NN_SNDTIMEO, &opt, sizeof (opt));
    nn_assert (opt == 1000);
    opt = 1000;
    test_setsockopt (sb, NN_SOL_SOCKET, NN_RCVTIMEO, &opt, sizeof (opt));
    nn_assert (opt == 1000);
    opt = 4;
    test_setsockopt (sb, NN_SOL_SOCKET, NN_RCVMAXSIZE, &opt, sizeof (opt));
    test_send (sc, "ABC");
    test_recv (sb, "ABC");
    test_send (sc, "ABCD");
    test_recv (sb, "ABCD");
    test_send (sc, "ABCDE");
    test_drop (sb, ETIMEDOUT);




    opt = 5;
    test_setsockopt (sb, NN_SOL_SOCKET, NN_RCVMAXSIZE, &opt, sizeof (opt));
    test_connect (sc, socket_address);
    test_send (sc, "ABCDE");
    test_recv (sb, "ABCDE");
    test_close (sb);
    test_close (sc);

    test_text ();


    sc = test_socket (AF_SP, NN_PAIR);
    test_connect (sc, socket_address);
    nn_sleep (100);
    test_close (sc);

    return 0;
}
