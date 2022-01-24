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

/* Variables and functions */
 int /*<<< orphan*/  AF_SP ; 
 int /*<<< orphan*/  NN_MSG ; 
 int /*<<< orphan*/  NN_REQ ; 
 char* FUNC0 (int,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int,char const*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (int,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char const*) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 

int FUNC16 (const char *url, const char *username)
{
    int fd;
    int rc;
    char *greeting;
    char *msg;

    fd = FUNC10 (AF_SP, NN_REQ);
    if (fd < 0) {
        FUNC1 (stderr, "nn_socket: %s\n", FUNC11 (FUNC6 ()));
        return (-1);
    }

    if (FUNC5 (fd, url) < 0) {
        FUNC1 (stderr, "nn_socket: %s\n", FUNC11 (FUNC6 ()));
        FUNC4 (fd);
        return (-1);        
    }

    FUNC15(1000);

    if (FUNC9 (fd, username, FUNC14 (username), 0) < 0) {
        FUNC1 (stderr, "nn_send: %s\n", FUNC11 (FUNC6 ()));
        FUNC4 (fd);
        return (-1);
    }

    /*  Here we ask the library to allocate response buffer for us (NN_MSG). */
    rc = FUNC8 (fd, &msg, NN_MSG, 0);
    if (rc < 0) {
        FUNC1 (stderr, "nn_recv: %s\n", FUNC11 (FUNC6 ()));
        FUNC4 (fd);
        return (-1);
    }

    FUNC4 (fd);

    /*  Response is not ASCIIZ terminated. */
    greeting = FUNC0 (rc + 1, 1);
    if (greeting == NULL) {
        FUNC1 (stderr, "calloc: %s\n", FUNC13 (errno));
        return (-1);
    }
    FUNC3(greeting, msg, rc);

    FUNC7 (msg);
    FUNC12 ("%s\n", greeting); 
    FUNC2 (greeting);
    return (0);
}