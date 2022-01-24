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
 int BUFSIZ ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (int) ; 
 int WS_TRACE ; 
 int WS_TRACE_VERBOSE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

void
FUNC4(
	int	 delay)
{
    char	 cbuf[BUFSIZ];		/* command buffer */

#ifdef WSDEBUG_TRACE
    if (WSDLEVEL(WS_TRACE_VERBOSE | WS_TRACE))
	wstrace("workshop_balloon_delay(%d)\n", delay);
#endif

    FUNC2(cbuf, "set bdlay=%d", delay);
    FUNC1(cbuf, TRUE);
}