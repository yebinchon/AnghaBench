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
 struct tm* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(const char *url)
{
    int fd; 

    /*  Create the socket. */
    fd = FUNC7 (AF_SP, NN_REP);
    if (fd < 0) {
        FUNC0 (stderr, "nn_socket: %s\n", FUNC8 (FUNC4 ()));
        return (-1);
    }

    /*  Bind to the URL.  This will bind to the address and listen
        synchronously; new clients will be accepted asynchronously
        without further action from the calling program. */

    if (FUNC2 (fd, url) < 0) {
        FUNC0 (stderr, "nn_bind: %s\n", FUNC8 (FUNC4 ()));
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

        rc = FUNC5 (fd, username, sizeof (username), 0);
        if (rc < 0) {
            /*  Any error here is unexpected. */
            FUNC0 (stderr, "nn_recv: %s\n", FUNC8 (FUNC4 ()));
            break;
        }

        secs = FUNC11 (NULL);
        now = FUNC1 (&secs);
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

        fmt = "Good %s, %s.";

        /*  Technically this might be overly pessimistic about size. */
        if ((FUNC10 (username) + FUNC10 (daytime) + FUNC10 (fmt)) >=
            sizeof (greeting)) {

            fmt = "I'm sorry, your name is too long.  But good %s anyway.";
        }

        /*  snprintf would be safer, but the above check protects us. */
        FUNC9 (greeting, fmt, daytime, username);

        rc = FUNC6 (fd, greeting, FUNC10 (greeting), 0);
        if (rc < 0) {
            /*  There are several legitimate reasons this can fail.
                We note them for debugging purposes, but then ignore
                otherwise.  If the socket is closed or failing, we will
                notice in recv above, and exit then. */
            FUNC0 (stderr, "nn_send: %s (ignoring)\n",
                FUNC8 (FUNC4 ()));
        }
    }

    FUNC3 (fd);
    return (-1);
}