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
typedef  union pipe {int dummy; } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (union pipe) ; 
 int /*<<< orphan*/  FUNC2 (union pipe) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(union pipe read_pipe, union pipe write_pipe)
{
	int i;

	FUNC0(FUNC2(read_pipe));
	FUNC0(FUNC1(write_pipe));

	/* Parent creates EBB event */

	FUNC0(FUNC2(read_pipe));
	FUNC0(FUNC1(write_pipe));

	/* Check the EBB is enabled by writing PMC1 */
	FUNC3();

	/* EBB event is enabled here */
	for (i = 0; i < 1000000; i++) ;

	return 0;
}