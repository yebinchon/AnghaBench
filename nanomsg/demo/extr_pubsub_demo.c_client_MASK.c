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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ time_t ;
typedef  int /*<<< orphan*/  subs ;
typedef  int /*<<< orphan*/  secs ;
typedef  int /*<<< orphan*/  msg ;
typedef  int /*<<< orphan*/  hhmmss ;

/* Variables and functions */
 int /*<<< orphan*/  AF_SP ; 
 int /*<<< orphan*/  NN_SUB ; 
 int /*<<< orphan*/  NN_SUB_SUBSCRIBE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int,char const*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*,int /*<<< orphan*/ ) ; 

int FUNC14 (const char *url)
{
    int fd;
    int rc;

    fd = FUNC9 (AF_SP, NN_SUB);
    if (fd < 0) {
        FUNC0 (stderr, "nn_socket: %s\n", FUNC10 (FUNC6 ()));
        return (-1);
    }

    if (FUNC5 (fd, url) < 0) {
        FUNC0 (stderr, "nn_socket: %s\n", FUNC10 (FUNC6 ()));
        FUNC4 (fd);
        return (-1);        
    }

    /*  We want all messages, so just subscribe to the empty value. */
    if (FUNC8 (fd, NN_SUB, NN_SUB_SUBSCRIBE, "", 0) < 0) {
        FUNC0 (stderr, "nn_setsockopt: %s\n", FUNC10 (FUNC6 ()));
        FUNC4 (fd);
        return (-1);        
    }

    for (;;) {
        uint8_t msg[2 * sizeof (uint32_t)];
        char hhmmss[9];  /* HH:MM:SS\0 */
        uint32_t subs, secs;
        time_t t;

        rc = FUNC7 (fd, msg, sizeof (msg), 0);
        if (rc < 0) {
            FUNC0 (stderr, "nn_recv: %s\n", FUNC10 (FUNC6 ()));
            break;
        }
        if (rc != sizeof (msg)) {
            FUNC0 (stderr, "nn_recv: got %d bytes, wanted %d\n",
                rc, (int)sizeof (msg));
             break;
        }
        FUNC3 (&secs, msg, sizeof (secs));
        FUNC3 (&subs, msg + sizeof (secs), sizeof (subs));

        t = (time_t) FUNC11(secs);
        FUNC13 (hhmmss, sizeof (hhmmss), "%T", FUNC2 (&t));

        FUNC12 ("%s <pid %u> There are %u clients connected.\n", hhmmss,
            (unsigned) FUNC1(), (unsigned) FUNC11(subs));
    }

    FUNC4 (fd);
    return (-1);
}