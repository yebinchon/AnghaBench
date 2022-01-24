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
typedef  int /*<<< orphan*/  cbuf ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (int) ; 
 int WS_TRACE ; 
 int WS_TRACE_VERBOSE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

void
FUNC4(
	char		*filename,
	int		 markId)
{
    char	cbuf[BUFSIZ];	/* command buffer */

    /* Delete mark */
#ifdef WSDEBUG_TRACE
    if (WSDLEVEL(WS_TRACE_VERBOSE | WS_TRACE))
	wstrace("workshop_delete_mark(%s, %d (id))\n",
		filename, markId);
#endif

    FUNC2(cbuf, sizeof(cbuf),
				 "sign unplace %d file=%s", markId, filename);
    FUNC1(cbuf, TRUE);
}