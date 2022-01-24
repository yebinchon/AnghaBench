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
struct rbcfg_value {char* name; char* desc; } ;
struct rbcfg_env {char* usage; char* name; int num_values; struct rbcfg_value* values; } ;
struct rbcfg_command {char* usage; char* name; int num_values; struct rbcfg_value* values; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int FUNC0 (struct rbcfg_env*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 struct rbcfg_env* rbcfg_commands ; 
 struct rbcfg_env* rbcfg_envs ; 
 char* rbcfg_name ; 
 int FUNC2 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC3(void)
{
	char buf[255];
	int len;
	int i;

	FUNC1(stderr, "Usage: %s <command>\n", rbcfg_name);

	FUNC1(stderr, "\nCommands:\n");
	for (i = 0; i < FUNC0(rbcfg_commands); i++) {
		const struct rbcfg_command *cmd;
		cmd = &rbcfg_commands[i];

		len = FUNC2(buf, sizeof(buf), "%s", cmd->usage);
		buf[len] = '\0';
		FUNC1(stderr, "%s\n", buf);
	}

	FUNC1(stderr, "\nConfiguration options:\n");
	for (i = 0; i < FUNC0(rbcfg_envs); i++) {
		const struct rbcfg_env *env;
		int j;

		env = &rbcfg_envs[i];
		FUNC1(stderr, "\n%s:\n", env->name);
		for (j = 0; j < env->num_values; j++) {
			const struct rbcfg_value *v = &env->values[j];
			FUNC1(stderr, "\t%-12s %s\n", v->name, v->desc);
		}
	}
	FUNC1(stderr, "\n");
}