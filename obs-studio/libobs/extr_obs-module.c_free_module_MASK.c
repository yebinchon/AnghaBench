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
struct obs_module {struct obs_module* data_path; struct obs_module* bin_path; struct obs_module* mod_name; int /*<<< orphan*/  (* unload ) () ;scalar_t__ loaded; int /*<<< orphan*/  (* free_locale ) () ;scalar_t__ module; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct obs_module*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(struct obs_module *mod)
{
	if (!mod)
		return;

	if (mod->module) {
		if (mod->free_locale)
			mod->free_locale();

		if (mod->loaded && mod->unload)
			mod->unload();

		/* there is no real reason to close the dynamic libraries,
		 * and sometimes this can cause issues. */
		/* os_dlclose(mod->module); */
	}

	FUNC0(mod->mod_name);
	FUNC0(mod->bin_path);
	FUNC0(mod->data_path);
	FUNC0(mod);
}