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
 scalar_t__ EAGAIN ; 
 scalar_t__ EINVAL ; 
 int /*<<< orphan*/  NN_DONTWAIT ; 
 int /*<<< orphan*/  NN_MSG ; 
 int /*<<< orphan*/  NN_PAIR ; 
 int /*<<< orphan*/  NN_RCVMAXSIZE ; 
 int /*<<< orphan*/  NN_SOL_SOCKET ; 
 int /*<<< orphan*/  SOCKET_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 int FUNC6 (int,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,char*) ; 
 int /*<<< orphan*/  FUNC13 (int,char*) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC15 ()
{
#ifndef NN_HAVE_WSL
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

    /*  Try closing a IPC socket while it not connected. */
    sc = FUNC14 (AF_SP, NN_PAIR);
    FUNC11 (sc, SOCKET_ADDRESS);
    FUNC10 (sc);

    /*  Open the socket anew. */
    sc = FUNC14 (AF_SP, NN_PAIR);
    FUNC11 (sc, SOCKET_ADDRESS);

    /*  Leave enough time for at least one re-connect attempt. */
    FUNC8 (200);

    sb = FUNC14 (AF_SP, NN_PAIR);
    FUNC9 (sb, SOCKET_ADDRESS);

    /*  Ping-pong test. */
    for (i = 0; i != 1; ++i) {
        FUNC13 (sc, "0123456789012345678901234567890123456789");
        FUNC12 (sb, "0123456789012345678901234567890123456789");
        FUNC13 (sb, "0123456789012345678901234567890123456789");
        FUNC12 (sc, "0123456789012345678901234567890123456789");
    }

    /*  Batch transfer test. */
    for (i = 0; i != 100; ++i) {
        FUNC13 (sc, "XYZ");
    }
    for (i = 0; i != 100; ++i) {
        FUNC12 (sb, "XYZ");
    }

    /*  Send something large enough to trigger overlapped I/O on Windows. */
    size = 10000;
    buf = FUNC2 (size);
    for (i = 0; i < size; ++i) {
        buf[i] = 48 + i % 10;
    }
    buf[size-1] = '\0';
    FUNC13 (sc, buf);
    FUNC12 (sb, buf);
    FUNC1 (buf);

    FUNC10 (sc);
    FUNC10 (sb);

    /*  Test whether connection rejection is handled decently. */
    sb = FUNC14 (AF_SP, NN_PAIR);
    FUNC9 (sb, SOCKET_ADDRESS);
    s1 = FUNC14 (AF_SP, NN_PAIR);
    FUNC11 (s1, SOCKET_ADDRESS);
    s2 = FUNC14 (AF_SP, NN_PAIR);
    FUNC11 (s2, SOCKET_ADDRESS);
    FUNC8 (100);
    FUNC10 (s2);
    FUNC10 (s1);
    FUNC10 (sb);

/*  On Windows, CreateNamedPipeA does not run exclusively.
    We should look at fixing this, but it will require
    changing the usock code for Windows.  In the meantime just
    disable this test on Windows. */
#if !defined(NN_HAVE_WINDOWS)
    /*  Test two sockets binding to the same address. */
    sb = FUNC14 (AF_SP, NN_PAIR);
    FUNC9 (sb, SOCKET_ADDRESS);
    s1 = FUNC14 (AF_SP, NN_PAIR);
    rc = FUNC4 (s1, SOCKET_ADDRESS);
    FUNC3 (rc < 0);
    FUNC0 (FUNC5 () == EADDRINUSE);
    sc = FUNC14 (AF_SP, NN_PAIR);
    FUNC11 (sc, SOCKET_ADDRESS);
    FUNC8 (100);
    FUNC13 (sb, "ABC");
    FUNC12 (sc, "ABC");
    FUNC10 (sb);
    FUNC10 (sc);
    FUNC10 (s1);
#endif

    /*  Test NN_RCVMAXSIZE limit */
    sb = FUNC14 (AF_SP, NN_PAIR);
    FUNC9 (sb, SOCKET_ADDRESS);
    s1 = FUNC14 (AF_SP, NN_PAIR);
    FUNC11 (s1, SOCKET_ADDRESS);
    opt = 4;
    rc = FUNC7 (sb, NN_SOL_SOCKET, NN_RCVMAXSIZE, &opt, opt_sz);
    FUNC3 (rc == 0);
    FUNC8 (100);
    FUNC13 (s1, "ABCD");
    FUNC12 (sb, "ABCD");
    FUNC13 (s1, "ABCDE");
    /*  Without sleep nn_recv returns EAGAIN even for string
        of acceptable size, so false positives are possible. */
    FUNC8 (100);
    rc = FUNC6 (sb, &dummy_buf, NN_MSG, NN_DONTWAIT);
    FUNC3 (rc < 0);
    FUNC0 (FUNC5 () == EAGAIN);
    FUNC10 (sb);
    FUNC10 (s1);

    /*  Test that NN_RCVMAXSIZE can be -1, but not lower */
    sb = FUNC14 (AF_SP, NN_PAIR);
    opt = -1;
    rc = FUNC7 (sb, NN_SOL_SOCKET, NN_RCVMAXSIZE, &opt, opt_sz);
    FUNC3 (rc >= 0);
    opt = -2;
    rc = FUNC7 (sb, NN_SOL_SOCKET, NN_RCVMAXSIZE, &opt, opt_sz);
    FUNC3 (rc < 0);
    FUNC0 (FUNC5 () == EINVAL);
    FUNC10 (sb);

    /*  Test closing a socket that is waiting to connect. */
    sc = FUNC14 (AF_SP, NN_PAIR);
    FUNC11 (sc, SOCKET_ADDRESS);
    FUNC8 (100);
    FUNC10 (sc);
#endif /* NN_HAVE_WSL */

    return 0;
}