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
struct rename_flag_t {char* pfx; int /*<<< orphan*/  count; TYPE_1__* core; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,struct rename_flag_t*) ; 
 char* FUNC2 (char const*) ; 
 int /*<<< orphan*/  rename_flag_ordinal ; 
 char* FUNC3 (char*,char) ; 
 char* FUNC4 (char const*) ; 

__attribute__((used)) static void FUNC5(RCore *core, const char *str) {
	const char *glob = FUNC2 (str);
	char *pfx = FUNC4 (glob);
	char *p = FUNC3 (pfx, '*');
	if (p) {
		*p = 0;
	}

	struct rename_flag_t u = { .core = core, .pfx = pfx, .count = 0 };
	FUNC1 (core->flags, glob, rename_flag_ordinal, &u);
	FUNC0 (pfx);
}