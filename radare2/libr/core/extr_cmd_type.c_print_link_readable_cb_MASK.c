#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* anal; } ;
struct TYPE_4__ {int /*<<< orphan*/  sdb_types; } ;
typedef  TYPE_2__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,char*,char const*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(void *p, const char *k, const char *v) {
	RCore *core = (RCore *)p;
	char *fmt = FUNC3 (core->anal->sdb_types, v);
	if (!fmt) {
		FUNC0 ("Can't fint type %s", v);
		return 1;
	}
	FUNC1 ("(%s)\n", v);
	FUNC2 (core, "pf %s @ 0x%s\n", fmt, k + FUNC4 ("link."));
	return 1;
}