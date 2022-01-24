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
 int /*<<< orphan*/  CP_UTF8 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _O_U8TEXT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  previousConsoleOutput ; 
 void* previousStdErr ; 
 void* previousStdOut ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

void FUNC4()
{
#if !defined(_POWERKATZ)
#if !defined(_WINDLL)
	previousStdOut = FUNC3(FUNC2(stdout), _O_U8TEXT);
	previousStdErr = FUNC3(FUNC2(stderr), _O_U8TEXT);
#endif
	previousConsoleOutput = FUNC0();
	FUNC1(CP_UTF8);
#endif
}