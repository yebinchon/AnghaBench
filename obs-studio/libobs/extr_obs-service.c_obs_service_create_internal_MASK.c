#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct obs_service_info {int /*<<< orphan*/  (* create ) (int /*<<< orphan*/ ,struct obs_service*) ;} ;
struct TYPE_8__ {int /*<<< orphan*/  data; int /*<<< orphan*/  settings; } ;
struct obs_service {TYPE_3__ context; TYPE_1__* control; struct obs_service_info info; } ;
typedef  int /*<<< orphan*/  obs_weak_service_t ;
typedef  struct obs_service obs_service_t ;
typedef  int /*<<< orphan*/  obs_data_t ;
struct TYPE_7__ {int /*<<< orphan*/  first_service; int /*<<< orphan*/  services_mutex; } ;
struct TYPE_9__ {TYPE_2__ data; } ;
struct TYPE_6__ {struct obs_service* service; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  OBS_OBJ_TYPE_SERVICE ; 
 int /*<<< orphan*/  FUNC0 (struct obs_service*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 void* FUNC2 (int) ; 
 struct obs_service_info* FUNC3 (char const*) ; 
 TYPE_5__* obs ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct obs_service*) ; 

__attribute__((used)) static obs_service_t *FUNC7(const char *id,
						  const char *name,
						  obs_data_t *settings,
						  obs_data_t *hotkey_data,
						  bool private)
{
	const struct obs_service_info *info = FUNC3(id);
	struct obs_service *service;

	if (!info) {
		FUNC1(LOG_ERROR, "Service '%s' not found", id);
		return NULL;
	}

	service = FUNC2(sizeof(struct obs_service));

	if (!FUNC4(&service->context, OBS_OBJ_TYPE_SERVICE,
				   settings, name, hotkey_data, private)) {
		FUNC0(service);
		return NULL;
	}

	service->info = *info;
	service->context.data =
		service->info.create(service->context.settings, service);
	if (!service->context.data)
		FUNC1(LOG_ERROR, "Failed to create service '%s'!", name);

	service->control = FUNC2(sizeof(obs_weak_service_t));
	service->control->service = service;

	FUNC5(&service->context, &obs->data.services_mutex,
				&obs->data.first_service);

	FUNC1(LOG_DEBUG, "service '%s' (%s) created", name, id);
	return service;
}