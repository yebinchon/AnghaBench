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
 size_t READ ; 
 size_t WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  c ; 
 int /*<<< orphan*/ * pipe_fd1 ; 
 int /*<<< orphan*/ * pipe_fd2 ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void *FUNC4(void *arg)
{
	while (1) {
		FUNC0(FUNC3(pipe_fd1[WRITE], &c, 1) == 1);
		FUNC2();

		FUNC0(FUNC1(pipe_fd2[READ], &c, 1) == 1);
		FUNC2();
	}

	return NULL;
}