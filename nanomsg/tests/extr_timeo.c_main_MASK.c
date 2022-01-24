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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  timeo ;
struct nn_stopwatch {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  AF_SP ; 
 scalar_t__ ETIMEDOUT ; 
 int /*<<< orphan*/  NN_PAIR ; 
 int /*<<< orphan*/  NN_RCVTIMEO ; 
 int /*<<< orphan*/  NN_SNDTIMEO ; 
 int /*<<< orphan*/  NN_SOL_SOCKET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (int,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nn_stopwatch*) ; 
 int /*<<< orphan*/  FUNC6 (struct nn_stopwatch*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 

int FUNC10 ()
{
    int rc;
    int s;
    int timeo;
    char buf [3];
    struct nn_stopwatch stopwatch;
    uint64_t elapsed;

    s = FUNC8 (AF_SP, NN_PAIR);

    timeo = 100;
    rc = FUNC4 (s, NN_SOL_SOCKET, NN_RCVTIMEO, &timeo, sizeof (timeo));
    FUNC0 (rc == 0);
    FUNC5 (&stopwatch);
    rc = FUNC2 (s, buf, sizeof (buf), 0);
    elapsed = FUNC6 (&stopwatch);
    FUNC0 (rc < 0 && FUNC1 () == ETIMEDOUT);
    FUNC9 (elapsed, 100000);

    timeo = 100;
    rc = FUNC4 (s, NN_SOL_SOCKET, NN_SNDTIMEO, &timeo, sizeof (timeo));
    FUNC0 (rc == 0);
    FUNC5 (&stopwatch);
    rc = FUNC3 (s, "ABC", 3, 0);
    elapsed = FUNC6 (&stopwatch);
    FUNC0 (rc < 0 && FUNC1 () == ETIMEDOUT);
    FUNC9 (elapsed, 100000);

    FUNC7 (s);

    return 0;
}