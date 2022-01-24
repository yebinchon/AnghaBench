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
typedef  int /*<<< orphan*/  jmp_buf ;

/* Variables and functions */
 int /*<<< orphan*/  abrtflag ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ ptflag ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC3(int sig)
{
	extern jmp_buf ptabort;

	FUNC2("\n");
	(void) FUNC0(stdout);
	abrtflag++;
	if (ptflag)
		FUNC1(ptabort,1);
}