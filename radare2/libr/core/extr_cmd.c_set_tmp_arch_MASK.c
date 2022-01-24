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
struct TYPE_3__ {int fixedarch; int /*<<< orphan*/  config; } ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(RCore *core, char *arch, char **tmparch) {
	if (!tmparch) {
		FUNC0 ("tmparch should be set\n");
	}
	*tmparch = FUNC3 (FUNC1 (core->config, "asm.arch"));
	FUNC2 (core->config, "asm.arch", arch);
	core->fixedarch = true;
	return true;
}