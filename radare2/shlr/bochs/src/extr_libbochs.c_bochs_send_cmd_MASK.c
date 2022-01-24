#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  hWritePipeOut; } ;
typedef  TYPE_1__ libbochs_t ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*,char const*) ; 
 size_t FUNC6 (char*) ; 
 size_t FUNC7 (int /*<<< orphan*/ ,char*,size_t) ; 

void FUNC8(libbochs_t* b, const char *cmd, bool bWait) {
	char *cmdbuff = FUNC5 ("%s\n", cmd);
	FUNC1 (b);
#if __WINDOWS__
	{
		DWORD dwWritten;
		WriteFile (b->hWritePipeOut, cmdbuff, strlen (cmdbuff), &dwWritten, NULL);
	}
#else
	size_t cmdlen = FUNC6 (cmdbuff);
	if (FUNC7 (b->hWritePipeOut, cmdbuff, cmdlen) != cmdlen) {
		FUNC3 ("boch_send_cmd failed\n");
		goto beach;
	}
#endif
	if (bWait)
		FUNC2 (b);
beach:
	FUNC4 (cmdbuff);
}