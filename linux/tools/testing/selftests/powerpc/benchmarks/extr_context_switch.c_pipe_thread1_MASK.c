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
 int /*<<< orphan*/  SIGALRM ; 
 size_t WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  c ; 
 int iterations ; 
 int /*<<< orphan*/ * pipe_fd1 ; 
 int /*<<< orphan*/ * pipe_fd2 ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  sigalrm_handler ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void *FUNC6(void *arg)
{
	FUNC3(SIGALRM, sigalrm_handler);
	FUNC0(1);

	while (1) {
		FUNC1(FUNC2(pipe_fd1[READ], &c, 1) == 1);
		FUNC4();

		FUNC1(FUNC5(pipe_fd2[WRITE], &c, 1) == 1);
		FUNC4();

		iterations += 2;
	}

	return NULL;
}