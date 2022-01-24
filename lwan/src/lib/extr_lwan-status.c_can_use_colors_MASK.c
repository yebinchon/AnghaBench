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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC3 (char const*,char*) ; 

__attribute__((used)) static bool FUNC4(void)
{
    const char *term;

    if (!FUNC1(FUNC0(stdout)))
        return false;

    term = FUNC2("TERM");
    if (term && FUNC3(term, "dumb"))
        return false;

    return true;
}