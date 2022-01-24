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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  subs ;
typedef  int /*<<< orphan*/  secs ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  AF_SP ; 
 int /*<<< orphan*/  NN_PUB ; 
 int /*<<< orphan*/  NN_STAT_CURRENT_CONNECTIONS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__*,int) ; 
 scalar_t__ FUNC3 (int,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(const char *url)
{
    int fd; 

    /*  Create the socket. */
    fd = FUNC8 (AF_SP, NN_PUB);
    if (fd < 0) {
        FUNC0 (stderr, "nn_socket: %s\n", FUNC9 (FUNC5 ()));
        return (-1);
    }

    /*  Bind to the URL.  This will bind to the address and listen
        synchronously; new clients will be accepted asynchronously
        without further action from the calling program. */

    if (FUNC3 (fd, url) < 0) {
        FUNC0 (stderr, "nn_bind: %s\n", FUNC9 (FUNC5 ()));
        FUNC4 (fd);
        return (-1);
    }

    /*  Now we can just publish results.  Note that there is no explicit
        accept required.  We just start writing the information. */

    for (;;) {
        uint8_t msg[2 * sizeof (uint32_t)];
        uint32_t secs, subs;
        int rc;

        secs = (uint32_t) FUNC11 (NULL);
        subs = (uint32_t) FUNC6 (fd, NN_STAT_CURRENT_CONNECTIONS);

        secs = FUNC1 (secs);
        subs = FUNC1 (subs);

        FUNC2 (msg, &secs, sizeof (secs));
        FUNC2 (msg + sizeof (secs), &subs, sizeof (subs));

        rc = FUNC7 (fd, msg, sizeof (msg), 0);
        if (rc < 0) {
            /*  There are several legitimate reasons this can fail.
                We note them for debugging purposes, but then ignore
                otherwise. */
            FUNC0 (stderr, "nn_send: %s (ignoring)\n",
                FUNC9 (FUNC5 ()));
        }
        FUNC10(10);
    }

    /* NOTREACHED */
    FUNC4 (fd);
    return (-1);
}