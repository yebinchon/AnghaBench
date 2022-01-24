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
struct symbol {scalar_t__ name; } ;
struct menu {struct menu* next; struct menu* list; struct symbol* sym; } ;

/* Variables and functions */
 char* CONFIG_ ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  conf_cnt ; 
 scalar_t__ input_mode ; 
 scalar_t__ listnewconfig ; 
 int /*<<< orphan*/  FUNC2 (struct menu*) ; 
 int /*<<< orphan*/  FUNC3 (struct menu*) ; 
 scalar_t__ olddefconfig ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,...) ; 
 int /*<<< orphan*/  rootEntry ; 
 scalar_t__ FUNC5 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC6 (struct symbol*) ; 
 scalar_t__ FUNC7 (struct symbol*) ; 
 scalar_t__ FUNC8 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC9 (struct symbol*) ; 
 scalar_t__ yes ; 

__attribute__((used)) static void FUNC10(struct menu *menu)
{
	struct symbol *sym;
	struct menu *child;

	if (!FUNC3(menu))
		return;

	sym = menu->sym;
	if (sym && !FUNC6(sym)) {
		if (FUNC7(sym) ||
		    (FUNC8(sym) && FUNC5(sym) == yes)) {
			if (input_mode == listnewconfig) {
				if (sym->name && !FUNC9(sym)) {
					FUNC4("%s%s\n", CONFIG_, sym->name);
				}
			} else if (input_mode != olddefconfig) {
				if (!conf_cnt++)
				        FUNC4("%s",FUNC0("*\n* Restart config...\n*\n"));
				rootEntry = FUNC2(menu);
				FUNC1(rootEntry);
			}
		}
	}

	for (child = menu->list; child; child = child->next)
		FUNC10(child);
}