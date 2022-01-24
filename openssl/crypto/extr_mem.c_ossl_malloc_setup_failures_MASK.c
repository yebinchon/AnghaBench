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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/ * md_failstring ; 
 int /*<<< orphan*/  md_tracefd ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 

void FUNC4(void)
{
    const char *cp = FUNC1("OPENSSL_MALLOC_FAILURES");

    if (cp != NULL && (md_failstring = FUNC3(cp)) != NULL)
        FUNC2();
    if ((cp = FUNC1("OPENSSL_MALLOC_FD")) != NULL)
        md_tracefd = FUNC0(cp);
}