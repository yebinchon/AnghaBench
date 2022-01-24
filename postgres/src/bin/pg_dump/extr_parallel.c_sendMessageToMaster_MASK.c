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
 size_t PIPE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int,char const*,int) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static void
FUNC3(int pipefd[2], const char *str)
{
	int			len = FUNC2(str) + 1;

	if (FUNC1(pipefd[PIPE_WRITE], str, len) != len)
		FUNC0("could not write to the communication channel: %m");
}