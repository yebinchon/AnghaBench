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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 

__attribute__((used)) static int FUNC4(void)
{
    /* "Negative" test, expect a mismatch */
    FUNC1("run_srp: expecting a mismatch");
    if (!FUNC0(FUNC3("alice", "password1", "password2")))
        return 0;

    /* "Positive" test, should pass */
    FUNC1("run_srp: expecting a match");
    if (!FUNC2(FUNC3("alice", "password", "password")))
        return 0;

    return 1;
}