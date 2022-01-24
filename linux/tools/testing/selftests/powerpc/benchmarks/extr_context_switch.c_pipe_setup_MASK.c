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
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pipe_fd1 ; 
 int /*<<< orphan*/  pipe_fd2 ; 

__attribute__((used)) static void FUNC2(int cpu1, int cpu2)
{
	if (FUNC1(pipe_fd1) || FUNC1(pipe_fd2))
		FUNC0(1);
}