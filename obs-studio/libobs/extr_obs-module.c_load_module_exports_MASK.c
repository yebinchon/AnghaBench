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
struct obs_module {int /*<<< orphan*/  module; void* author; void* description; void* name; void* free_locale; void* set_locale; void* post_load; void* unload; void* ver; void* set_pointer; void* load; } ;

/* Variables and functions */
 int MODULE_SUCCESS ; 
 void* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (char*,char const*) ; 

__attribute__((used)) static int FUNC2(struct obs_module *mod, const char *path)
{
	mod->load = FUNC0(mod->module, "obs_module_load");
	if (!mod->load)
		return FUNC1("obs_module_load", path);

	mod->set_pointer = FUNC0(mod->module, "obs_module_set_pointer");
	if (!mod->set_pointer)
		return FUNC1("obs_module_set_pointer", path);

	mod->ver = FUNC0(mod->module, "obs_module_ver");
	if (!mod->ver)
		return FUNC1("obs_module_ver", path);

	/* optional exports */
	mod->unload = FUNC0(mod->module, "obs_module_unload");
	mod->post_load = FUNC0(mod->module, "obs_module_post_load");
	mod->set_locale = FUNC0(mod->module, "obs_module_set_locale");
	mod->free_locale = FUNC0(mod->module, "obs_module_free_locale");
	mod->name = FUNC0(mod->module, "obs_module_name");
	mod->description = FUNC0(mod->module, "obs_module_description");
	mod->author = FUNC0(mod->module, "obs_module_author");
	return MODULE_SUCCESS;
}