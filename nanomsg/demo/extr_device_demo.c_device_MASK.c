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
 int /*<<< orphan*/  AF_SP_RAW ; 
 int /*<<< orphan*/  NN_REP ; 
 int /*<<< orphan*/  NN_REQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 scalar_t__ FUNC1 (int,char const*) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC6 (const char *url1, const char *url2)
{
    int s1, s2, rv;
    s1 = FUNC4 (AF_SP_RAW, NN_REQ);
    if (s1 < 0) {
        FUNC0 (stderr, "nn_socket: %s\n", FUNC5 (FUNC3 ()));
        return (-1);
    }
    if (FUNC1 (s1, url1) < 0) {
        FUNC0 (stderr, "nn_bind1(%s): %s\n", url1, FUNC5 (FUNC3 ()));
        return (-1);
    }
    s2 = FUNC4 (AF_SP_RAW, NN_REP);
    if (s2 < 0) {
        FUNC0 (stderr, "nn_socket: %s\n", FUNC5(FUNC3 ()));
        return (-1);
    }
    if (FUNC1 (s2, url2) < 0) {
        FUNC0 (stderr, "nn_bind2(%s): %s\n", url2, FUNC5 (FUNC3 ()));
        return (-1);
    }

    if (FUNC2 (s1, s2) != 0) {
        FUNC0 (stderr, "nn_device: %s\n", FUNC5 (FUNC3 ()));
        return (-1);
    }
    return (0);
}