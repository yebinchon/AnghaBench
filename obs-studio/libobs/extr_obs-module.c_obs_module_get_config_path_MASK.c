#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct dstr {char* array; int /*<<< orphan*/  member_0; } ;
struct TYPE_4__ {char const* mod_name; } ;
typedef  TYPE_1__ obs_module_t ;
struct TYPE_5__ {int /*<<< orphan*/  module_config_path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dstr*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*,int /*<<< orphan*/ ) ; 
 char FUNC3 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC4 (struct dstr*) ; 
 TYPE_3__* obs ; 

char *FUNC5(obs_module_t *module, const char *file)
{
	struct dstr output = {0};

	FUNC2(&output, obs->module_config_path);
	if (!FUNC4(&output) && FUNC3(&output) != '/')
		FUNC1(&output, '/');
	FUNC0(&output, module->mod_name);
	FUNC1(&output, '/');
	FUNC0(&output, file);

	return output.array;
}