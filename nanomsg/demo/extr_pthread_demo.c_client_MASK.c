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
typedef  scalar_t__ uint64_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  msg ;
typedef  int /*<<< orphan*/  msec ;

/* Variables and functions */
 int /*<<< orphan*/  AF_SP ; 
 int /*<<< orphan*/  NN_REQ ; 
 unsigned int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 unsigned int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int*,int) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int,char const*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int,int /*<<< orphan*/ **,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC13 (const char *url, const char *msecstr)
{
    int fd;
    int rc;
    char *greeting;
    uint8_t msg[sizeof (uint32_t)];
    uint64_t start;
    uint64_t end;
    unsigned msec;

    msec = FUNC0(msecstr);

    fd = FUNC10 (AF_SP, NN_REQ);
    if (fd < 0) {
        FUNC1 (stderr, "nn_socket: %s\n", FUNC11 (FUNC7 ()));
        return (-1);
    }

    if (FUNC6 (fd, url) < 0) {
        FUNC1 (stderr, "nn_socket: %s\n", FUNC11 (FUNC7 ()));
        FUNC5 (fd);
        return (-1);        
    }

    msec = FUNC2(msec);
    FUNC3 (msg, &msec, sizeof (msec));

    start = FUNC4 ();

    if (FUNC9 (fd, msg, sizeof (msg), 0) < 0) {
        FUNC1 (stderr, "nn_send: %s\n", FUNC11 (FUNC7 ()));
        FUNC5 (fd);
        return (-1);
    }

    rc = FUNC8 (fd, &msg, sizeof (msg), 0);
    if (rc < 0) {
        FUNC1 (stderr, "nn_recv: %s\n", FUNC11 (FUNC7 ()));
        FUNC5 (fd);
        return (-1);
    }

    FUNC5 (fd);

    end = FUNC4 ();

    FUNC12 ("Request took %u milliseconds.\n", (uint32_t)(end - start));
    return (0);
}