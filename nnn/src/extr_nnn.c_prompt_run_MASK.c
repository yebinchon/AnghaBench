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
 int F_CLI ; 
 int F_CONFIRM ; 
 size_t NCUR ; 
 int /*<<< orphan*/ * envs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  shell ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char const*,int) ; 

__attribute__((used)) static void FUNC2(char *cmd, const char *cur, const char *path)
{
	FUNC0(envs[NCUR], cur, 1);
	FUNC1(shell, "-c", cmd, path, F_CLI | F_CONFIRM);
}