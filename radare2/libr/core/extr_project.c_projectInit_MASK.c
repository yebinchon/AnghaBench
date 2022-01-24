#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  config; } ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(RCore *core) {
	char *prjdir = FUNC3 (FUNC2 (core->config, "dir.projects"));
	int ret = FUNC4 (prjdir);
	if (!ret) {
		FUNC0 ("Cannot mkdir dir.projects\n");
	}
	FUNC1 (prjdir);
	return ret;
}