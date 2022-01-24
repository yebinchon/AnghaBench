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
struct obs_module_info {int /*<<< orphan*/  bin_path; int /*<<< orphan*/  data_path; } ;
typedef  int /*<<< orphan*/  obs_module_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_DEBUG ; 
 int MODULE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void *param, const struct obs_module_info *info)
{
	obs_module_t *module;

	int code = FUNC3(&module, info->bin_path, info->data_path);
	if (code != MODULE_SUCCESS) {
		FUNC1(LOG_DEBUG, "Failed to load module file '%s': %d",
		     info->bin_path, code);
		return;
	}

	FUNC2(module);

	FUNC0(param);
}