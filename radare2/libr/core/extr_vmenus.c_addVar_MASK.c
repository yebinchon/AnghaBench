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
typedef  int /*<<< orphan*/  RCore ;

/* Variables and functions */
 char* FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC3 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(RCore *core, int ch, const char *msg) {
	char *src = FUNC0 (msg, NULL);
	char *name = FUNC0 ("Variable Name: ", NULL);
	char *type = FUNC0 ("Type of Variable (int32_t): ", NULL);
	char *cmd = FUNC3 ("afv%c %s %s %s", ch, src, name, type);
	FUNC4 (cmd);
	FUNC2 (core, cmd);
	FUNC1(cmd);
	FUNC1 (src);
	FUNC1 (name);
	FUNC1 (type);
}