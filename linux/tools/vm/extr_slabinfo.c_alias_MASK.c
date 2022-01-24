#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct aliasinfo {char* name; TYPE_1__* slab; } ;
struct TYPE_2__ {int refs; char* name; } ;

/* Variables and functions */
 int aliases ; 
 struct aliasinfo* aliasinfo ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  show_inverted ; 
 int /*<<< orphan*/  show_single_ref ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (char*,char*) ; 

__attribute__((used)) static void FUNC4(void)
{
	struct aliasinfo *a;
	char *active = NULL;

	FUNC2();
	FUNC0();

	for(a = aliasinfo; a < aliasinfo + aliases; a++) {

		if (!show_single_ref && a->slab->refs == 1)
			continue;

		if (!show_inverted) {
			if (active) {
				if (FUNC3(a->slab->name, active) == 0) {
					FUNC1(" %s", a->name);
					continue;
				}
			}
			FUNC1("\n%-12s <- %s", a->slab->name, a->name);
			active = a->slab->name;
		}
		else
			FUNC1("%-15s -> %s\n", a->name, a->slab->name);
	}
	if (active)
		FUNC1("\n");
}