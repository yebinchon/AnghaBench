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
typedef  int /*<<< orphan*/  username ;
typedef  int /*<<< orphan*/  time_t ;
struct tm {int tm_hour; } ;
typedef  int /*<<< orphan*/  greeting ;

/* Variables and functions */
 int /*<<< orphan*/  AF_SP ; 
 int /*<<< orphan*/  NN_REP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC1 () ; 
 struct tm* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int,char const*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,char*,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

int FUNC13(const char *url)
{
    int fd; 

    /*  Create the socket. */
    fd = FUNC8 (AF_SP, NN_REP);
    if (fd < 0) {
        FUNC0 (stderr, "nn_socket: %s\n", FUNC9 (FUNC5 ()));
        return (-1);
    }

    /*  Connect to the URL.  This will connect to the address and listen
        synchronously; new clients will be accepted asynchronously
        without further action from the calling program. */

    if (FUNC4 (fd, url) < 0) {
        FUNC0 (stderr, "nn_connect: %s\n", FUNC9 (FUNC5 ()));
        FUNC3 (fd);
        return (-1);
    }

    /*  Now we can just process results.  Note that there is no explicit
        accept required.  We just receive a request, and reply to it.
        Its important to note that we must not issue two receives in a
        row without replying first, or the following receive(s) will
        cancel any unreplied requests. */

    for (;;) {
        char username[128];
        char greeting[128];
        time_t secs;
        struct tm *now;
        char *daytime;
        int rc;
        char *fmt;

        rc = FUNC6 (fd, username, sizeof (username), 0);
        if (rc < 0) {
            /*  Any error here is unexpected. */
            FUNC0 (stderr, "nn_recv: %s\n", FUNC9 (FUNC5 ()));
            break;
        }

        secs = FUNC12 (NULL);
        now = FUNC2 (&secs);
        if (now->tm_hour < 12) {
            daytime = "morning";

        } else if (now->tm_hour < 17) {
            daytime = "afternoon";

        } else if (now->tm_hour < 20) {
            daytime = "evening";

        } else {
            daytime = "night";
        }

        /*  Ensure ASCIIZ terminated string. */
        if (rc < sizeof (username)) {
            username[rc] = '\0';
        } else {
            username[sizeof (username) - 1] = '\0';
        }

        fmt = "Good %s, %s (from %d).";

        /*  Technically this might be overly pessimistic about size. */
        if ((FUNC11 (username) + FUNC11 (daytime) + FUNC11 (fmt)) >=
            sizeof (greeting)) {

            fmt = "I'm sorry, your name is too long.  But good %s anyway.";
        }

        /*  snprintf would be safer, but the above check protects us. */
        FUNC10 (greeting, fmt, daytime, username, (int)FUNC1());

        rc = FUNC7 (fd, greeting, FUNC11 (greeting), 0);
        if (rc < 0) {
            /*  There are several legitimate reasons this can fail.
                We note them for debugging purposes, but then ignore
                otherwise.  If the socket is closed or failing, we will
                notice in recv above, and exit then. */
            FUNC0 (stderr, "nn_send: %s (ignoring)\n",
                FUNC9 (FUNC5 ()));
        }
    }

    FUNC3 (fd);
    return (-1);
}