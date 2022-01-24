#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* cmdfilter; } ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

__attribute__((used)) static bool FUNC3(RCore *core, const char *path) {
	if (!FUNC2 (path)) {
		return false;
	}
	core->cmdfilter = "ec ";
	bool res = FUNC1 (core, path);
	if (res) {
		FUNC0 ();
	}
	core->cmdfilter = NULL;
	return res;
}