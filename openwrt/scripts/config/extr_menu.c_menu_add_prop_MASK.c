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
struct TYPE_2__ {int /*<<< orphan*/  expr; } ;
struct property {char* text; TYPE_1__ visible; struct expr* expr; struct menu* menu; } ;
struct menu {struct property* prompt; int /*<<< orphan*/  visibility; struct menu* parent; int /*<<< orphan*/  sym; } ;
struct expr {int dummy; } ;
typedef  enum prop_type { ____Placeholder_prop_type } prop_type ;

/* Variables and functions */
 int P_PROMPT ; 
 struct menu* current_entry ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct expr*) ; 
 struct expr* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (struct expr*) ; 
 struct property* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct property*,char*) ; 
 struct menu rootmenu ; 

struct property *FUNC6(enum prop_type type, char *prompt, struct expr *expr, struct expr *dep)
{
	struct property *prop = FUNC4(type, current_entry->sym);

	prop->menu = current_entry;
	prop->expr = expr;
	prop->visible.expr = FUNC3(dep);

	if (prompt) {
		if (FUNC2(*prompt)) {
			FUNC5(prop, "leading whitespace ignored");
			while (FUNC2(*prompt))
				prompt++;
		}
		if (current_entry->prompt && current_entry != &rootmenu)
			FUNC5(prop, "prompt redefined");

		/* Apply all upper menus' visibilities to actual prompts. */
		if(type == P_PROMPT) {
			struct menu *menu = current_entry;

			while ((menu = menu->parent) != NULL) {
				struct expr *dup_expr;

				if (!menu->visibility)
					continue;
				/*
				 * Do not add a reference to the
				 * menu's visibility expression but
				 * use a copy of it.  Otherwise the
				 * expression reduction functions
				 * will modify expressions that have
				 * multiple references which can
				 * cause unwanted side effects.
				 */
				dup_expr = FUNC1(menu->visibility);

				prop->visible.expr
					= FUNC0(prop->visible.expr,
							 dup_expr);
			}
		}

		current_entry->prompt = prop;
	}
	prop->text = prompt;

	return prop;
}