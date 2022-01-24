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
typedef  int /*<<< orphan*/  tids ;
typedef  int /*<<< orphan*/ * pthread_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_SP_RAW ; 
 int MAXWORKERS ; 
 int /*<<< orphan*/  NN_REP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC9 (int) ; 
 int /*<<< orphan*/  worker ; 

int FUNC10(const char *url)
{
    int fd; 
    int i;
    pthread_t tids [MAXWORKERS];
    int rc;

    /*  Create the socket. */
    fd = FUNC5(AF_SP_RAW, NN_REP);
    if (fd < 0) {
        FUNC0 (stderr, "nn_socket: %s\n", FUNC6 (FUNC4 ()));
        return (-1);
    }

    /*  Bind to the URL.  This will bind to the address and listen
        synchronously; new clients will be accepted asynchronously
        without further action from the calling program. */

    if (FUNC2 (fd, url) < 0) {
        FUNC0 (stderr, "nn_bind: %s\n", FUNC6 (FUNC4 ()));
        FUNC3 (fd);
        return (-1);
    }

    FUNC1 (tids, 0, sizeof (tids));

    /*  Start up the threads. */
    for (i = 0; i < MAXWORKERS; i++) {
        rc = FUNC7 (&tids[i], NULL, worker, (void *)(intptr_t)fd);
        if (rc < 0) {
            FUNC0 (stderr, "pthread_create: %s\n", FUNC9 (rc));
            FUNC3 (fd);
            break;
        }
    }

    /*  Now wait on them to finish. */
    for (i = 0; i < MAXWORKERS; i++) {
        if (tids[i] != NULL) {
            FUNC8 (tids[i], NULL);
        }
    }
    return (-1);
}