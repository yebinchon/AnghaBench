#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  context; } ;
typedef  TYPE_1__ obs_service_t ;
typedef  int /*<<< orphan*/  obs_hotkey_id ;
typedef  int /*<<< orphan*/  obs_hotkey_func ;

/* Variables and functions */
 int /*<<< orphan*/  OBS_HOTKEY_REGISTERER_SERVICE ; 
 int /*<<< orphan*/  OBS_INVALID_HOTKEY_ID ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

obs_hotkey_id FUNC4(obs_service_t *service,
					  const char *name,
					  const char *description,
					  obs_hotkey_func func, void *data)
{
	if (!service || !FUNC0())
		return OBS_INVALID_HOTKEY_ID;

	obs_hotkey_id id = FUNC1(
		OBS_HOTKEY_REGISTERER_SERVICE,
		FUNC2(service), &service->context, name,
		description, func, data);

	FUNC3();
	return id;
}