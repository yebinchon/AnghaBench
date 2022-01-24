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
struct rbcfg_env {char* name; } ;

/* Variables and functions */
 int FUNC0 (struct rbcfg_env*) ; 
 int RB_ERR_INVALID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char const*) ; 
 char* FUNC2 (struct rbcfg_env const*) ; 
 struct rbcfg_env* rbcfg_envs ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int
FUNC4(int argc, const char *argv[])
{
	int i;

	if (argc != 0) {
		FUNC3();
		return RB_ERR_INVALID;
	}

	for (i = 0; i < FUNC0(rbcfg_envs); i++) {
		const struct rbcfg_env *env = &rbcfg_envs[i];
		const char *value;

		value = FUNC2(env);
		if (value)
			FUNC1(stdout, "%s=%s\n", env->name, value);
	}

	return 0;
}