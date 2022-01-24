#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  opt ;

/* Variables and functions */
 int /*<<< orphan*/  AF_SP ; 
 scalar_t__ EADDRINUSE ; 
 scalar_t__ EINVAL ; 
 scalar_t__ ENODEV ; 
 int /*<<< orphan*/  ETIMEDOUT ; 
 int /*<<< orphan*/  NN_PAIR ; 
 int /*<<< orphan*/  NN_RCVMAXSIZE ; 
 int /*<<< orphan*/  NN_RCVTIMEO ; 
 int /*<<< orphan*/  NN_SNDTIMEO ; 
 int /*<<< orphan*/  NN_SOL_SOCKET ; 
 int /*<<< orphan*/  NN_WS ; 
 int /*<<< orphan*/  NN_WS_MSG_TYPE ; 
 int NN_WS_MSG_TYPE_BINARY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char const**) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,char*) ; 
 int FUNC4 (int,char*) ; 
 scalar_t__ FUNC5 () ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,size_t*) ; 
 int FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 char* socket_address ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,char*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int,char*) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,char*) ; 
 int /*<<< orphan*/  FUNC15 (int,char*) ; 
 int /*<<< orphan*/  FUNC16 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 () ; 

int FUNC19 (int argc, const char *argv[])
{
    int rc;
    int sb;
    int sc;
    int sb2;
    int opt;
    size_t sz;
    int i;
    char any_address[128];

    FUNC9 (socket_address, "ws", "127.0.0.1",
            FUNC1 (argc, argv));

    FUNC9 (any_address, "ws", "*",
            FUNC1 (argc, argv));

    /*  Try closing bound but unconnected socket. */
    sb = FUNC17 (AF_SP, NN_PAIR);
    FUNC10 (sb, any_address);
    FUNC11 (sb);

    /*  Try closing a TCP socket while it not connected. At the same time
        test specifying the local address for the connection. */
    sc = FUNC17 (AF_SP, NN_PAIR);
    FUNC12 (sc, socket_address);
    FUNC11 (sc);

    /*  Open the socket anew. */
    sc = FUNC17 (AF_SP, NN_PAIR);

    /*  Check socket options. */
    sz = sizeof (opt);
    rc = FUNC6 (sc, NN_WS, NN_WS_MSG_TYPE, &opt, &sz);
    FUNC0 (rc == 0);
    FUNC2 (sz == sizeof (opt));
    FUNC2 (opt == NN_WS_MSG_TYPE_BINARY);

    /*  Default port 80 should be assumed if not explicitly declared. */
    rc = FUNC4 (sc, "ws://127.0.0.1");
    FUNC0 (rc >= 0);

    /*  Try using invalid address strings. */
    rc = FUNC4 (sc, "ws://*:");
    FUNC2 (rc < 0);
    FUNC0 (FUNC5 () == EINVAL);
    rc = FUNC4 (sc, "ws://*:1000000");
    FUNC2 (rc < 0);
    FUNC0 (FUNC5 () == EINVAL);
    rc = FUNC4 (sc, "ws://*:some_port");
    FUNC2 (rc < 0);
    rc = FUNC4 (sc, "ws://eth10000;127.0.0.1:5555");
    FUNC2 (rc < 0);
    FUNC0 (FUNC5 () == ENODEV);

    rc = FUNC3 (sc, "ws://127.0.0.1:");
    FUNC2 (rc < 0);
    FUNC0 (FUNC5 () == EINVAL);
    rc = FUNC3 (sc, "ws://127.0.0.1:1000000");
    FUNC2 (rc < 0);
    FUNC0 (FUNC5 () == EINVAL);
    rc = FUNC3 (sc, "ws://eth10000:5555");
    FUNC2 (rc < 0);
    FUNC0 (FUNC5 () == ENODEV);

    rc = FUNC4 (sc, "ws://:5555");
    FUNC2 (rc < 0);
    FUNC0 (FUNC5 () == EINVAL);
    rc = FUNC4 (sc, "ws://-hostname:5555");
    FUNC2 (rc < 0);
    FUNC0 (FUNC5 () == EINVAL);
    rc = FUNC4 (sc, "ws://abc.123.---.#:5555");
    FUNC2 (rc < 0);
    FUNC0 (FUNC5 () == EINVAL);
    rc = FUNC4 (sc, "ws://[::1]:5555");
    FUNC2 (rc < 0);
    FUNC0 (FUNC5 () == EINVAL);
    rc = FUNC4 (sc, "ws://abc...123:5555");
    FUNC2 (rc < 0);
    FUNC0 (FUNC5 () == EINVAL);
    rc = FUNC4 (sc, "ws://.123:5555");
    FUNC2 (rc < 0);
    FUNC0 (FUNC5 () == EINVAL);

    FUNC11 (sc);

    sb = FUNC17 (AF_SP, NN_PAIR);
    FUNC10 (sb, socket_address);
    sc = FUNC17 (AF_SP, NN_PAIR);
    FUNC12 (sc, socket_address);

    /*  Ping-pong test. */
    for (i = 0; i != 100; ++i) {

        FUNC15 (sc, "ABC");
        FUNC14 (sb, "ABC");

        FUNC15 (sb, "DEF");
        FUNC14 (sc, "DEF");
    }

    /*  Batch transfer test. */
    for (i = 0; i != 100; ++i) {
        FUNC15 (sc, "0123456789012345678901234567890123456789");
    }
    for (i = 0; i != 100; ++i) {
        FUNC14 (sb, "0123456789012345678901234567890123456789");
    }

    FUNC11 (sc);
    FUNC11 (sb);

    /*  Test two sockets binding to the same address. */
    sb = FUNC17 (AF_SP, NN_PAIR);
    FUNC10 (sb, socket_address);
    sb2 = FUNC17 (AF_SP, NN_PAIR);

    rc = FUNC3 (sb2, socket_address);
    FUNC2 (rc < 0);
    FUNC0 (FUNC5 () == EADDRINUSE);
    FUNC11(sb);
    FUNC11(sb2);

    /*  Test that NN_RCVMAXSIZE can be -1, but not lower */
    sb = FUNC17 (AF_SP, NN_PAIR);
    opt = -1;
    rc = FUNC7 (sb, NN_SOL_SOCKET, NN_RCVMAXSIZE, &opt, sizeof (opt));
    FUNC2 (rc >= 0);
    opt = -2;
    rc = FUNC7 (sb, NN_SOL_SOCKET, NN_RCVMAXSIZE, &opt, sizeof (opt));
    FUNC2 (rc < 0);
    FUNC0 (FUNC5 () == EINVAL);
    FUNC11 (sb);

    /*  Test NN_RCVMAXSIZE limit */
    sb = FUNC17 (AF_SP, NN_PAIR);
    FUNC10 (sb, socket_address);
    sc = FUNC17 (AF_SP, NN_PAIR);
    FUNC12 (sc, socket_address);
    opt = 1000;
    FUNC16 (sc, NN_SOL_SOCKET, NN_SNDTIMEO, &opt, sizeof (opt));
    FUNC2 (opt == 1000);
    opt = 1000;
    FUNC16 (sb, NN_SOL_SOCKET, NN_RCVTIMEO, &opt, sizeof (opt));
    FUNC2 (opt == 1000);
    opt = 4;
    FUNC16 (sb, NN_SOL_SOCKET, NN_RCVMAXSIZE, &opt, sizeof (opt));
    FUNC15 (sc, "ABC");
    FUNC14 (sb, "ABC");
    FUNC15 (sc, "ABCD");
    FUNC14 (sb, "ABCD");
    FUNC15 (sc, "ABCDE");
    FUNC13 (sb, ETIMEDOUT);

    /*  Increase the size limit, reconnect, then try sending again. The reason a
        reconnect is necessary is because after a protocol violation, the
        connecting socket will not continue automatic reconnection attempts. */
    opt = 5;
    FUNC16 (sb, NN_SOL_SOCKET, NN_RCVMAXSIZE, &opt, sizeof (opt));
    FUNC12 (sc, socket_address);
    FUNC15 (sc, "ABCDE");
    FUNC14 (sb, "ABCDE");
    FUNC11 (sb);
    FUNC11 (sc);

    FUNC18 ();

    /*  Test closing a socket that is waiting to connect. */
    sc = FUNC17 (AF_SP, NN_PAIR);
    FUNC12 (sc, socket_address);
    FUNC8 (100);
    FUNC11 (sc);

    return 0;
}