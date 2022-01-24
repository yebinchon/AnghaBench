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
typedef  int /*<<< orphan*/  timeo ;

/* Variables and functions */
 int /*<<< orphan*/  AF_SP ; 
 scalar_t__ ETIMEDOUT ; 
 int /*<<< orphan*/  NN_PAIR ; 
 int /*<<< orphan*/  NN_PULL ; 
 int /*<<< orphan*/  NN_SNDTIMEO ; 
 int /*<<< orphan*/  NN_SOL_SOCKET ; 
 char* SOCKET_ADDRESS_INPROC ; 
 char* SOCKET_ADDRESS_IPC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char const**) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10 (int argc, const char *argv[])
{
    int rc;
    int pair;
    int pull;
    int timeo;
    char socket_address_tcp[128];

    FUNC4(socket_address_tcp, "tcp", "127.0.0.1",
            FUNC1(argc, argv));

    /*  Inproc: Bind first, connect second. */
    pair = FUNC9 (AF_SP, NN_PAIR);
    FUNC5 (pair, SOCKET_ADDRESS_INPROC);
    pull = FUNC9 (AF_SP, NN_PULL);
    FUNC7 (pull, SOCKET_ADDRESS_INPROC);
    timeo = 100;
    FUNC8 (pair, NN_SOL_SOCKET, NN_SNDTIMEO,
        &timeo, sizeof (timeo));
    rc = FUNC3 (pair, "ABC", 3, 0);
    FUNC0 (rc < 0 && FUNC2 () == ETIMEDOUT);
    FUNC6 (pull);
    FUNC6 (pair);

    /*  Inproc: Connect first, bind second. */
    pull = FUNC9 (AF_SP, NN_PULL);
    FUNC7 (pull, SOCKET_ADDRESS_INPROC);
    pair = FUNC9 (AF_SP, NN_PAIR);
    FUNC5 (pair, SOCKET_ADDRESS_INPROC);
    timeo = 100;
    FUNC8 (pair, NN_SOL_SOCKET, NN_SNDTIMEO,
        &timeo, sizeof (timeo));
    rc = FUNC3 (pair, "ABC", 3, 0);
    FUNC0 (rc < 0 && FUNC2 () == ETIMEDOUT);
    FUNC6 (pull);
    FUNC6 (pair);

#if !defined NN_HAVE_WINDOWS && !defined NN_HAVE_WSL

    /*  IPC */
    pair = FUNC9 (AF_SP, NN_PAIR);
    FUNC5 (pair, SOCKET_ADDRESS_IPC);
    pull = FUNC9 (AF_SP, NN_PULL);
    FUNC7 (pull, SOCKET_ADDRESS_IPC);
    timeo = 100;
    FUNC8 (pair, NN_SOL_SOCKET, NN_SNDTIMEO,
        &timeo, sizeof (timeo));
    rc = FUNC3 (pair, "ABC", 3, 0);
    FUNC0 (rc < 0 && FUNC2 () == ETIMEDOUT);
    FUNC6 (pull);
    FUNC6 (pair);

#endif

    /*  TCP */
    pair = FUNC9 (AF_SP, NN_PAIR);
    FUNC5 (pair, socket_address_tcp);
    pull = FUNC9 (AF_SP, NN_PULL);
    FUNC7 (pull, socket_address_tcp);
    timeo = 100;
    FUNC8 (pair, NN_SOL_SOCKET, NN_SNDTIMEO,
        &timeo, sizeof (timeo));
    rc = FUNC3 (pair, "ABC", 3, 0);
    FUNC0 (rc < 0 && FUNC2 () == ETIMEDOUT);
    FUNC6 (pull);
    FUNC6 (pair);

    return 0;
}