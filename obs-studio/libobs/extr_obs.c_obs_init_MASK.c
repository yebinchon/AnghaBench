#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct obs_core {int dummy; } ;
typedef  int /*<<< orphan*/  profiler_name_store_t ;
struct TYPE_5__ {int /*<<< orphan*/  gpu_encoder_mutex; } ;
struct TYPE_6__ {int /*<<< orphan*/  monitoring_mutex; } ;
struct TYPE_7__ {int name_store_owned; void* locale; void* module_config_path; int /*<<< orphan*/ * name_store; TYPE_1__ video; TYPE_2__ audio; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  audio_line_info ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC2 (char const*) ; 
 TYPE_3__* FUNC3 (int) ; 
 int /*<<< orphan*/  group_info ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_3__* obs ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  scene_info ; 

__attribute__((used)) static bool FUNC11(const char *locale, const char *module_config_path,
		     profiler_name_store_t *store)
{
	obs = FUNC3(sizeof(struct obs_core));

	FUNC10(&obs->audio.monitoring_mutex);
	FUNC10(&obs->video.gpu_encoder_mutex);

	obs->name_store_owned = !store;
	obs->name_store = store ? store : FUNC9();
	if (!obs->name_store) {
		FUNC1(LOG_ERROR, "Couldn't create profiler name store");
		return false;
	}

	FUNC4();

	if (!FUNC5())
		return false;
	if (!FUNC6())
		return false;
	if (!FUNC7())
		return false;

	if (module_config_path)
		obs->module_config_path = FUNC2(module_config_path);
	obs->locale = FUNC2(locale);
	FUNC8(&scene_info);
	FUNC8(&group_info);
	FUNC8(&audio_line_info);
	FUNC0();
	return true;
}