#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  settings; int /*<<< orphan*/  data; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* activate ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct obs_service {int active; TYPE_2__ context; TYPE_1__ info; int /*<<< orphan*/  output; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct obs_service*) ; 
 int /*<<< orphan*/  FUNC2 (struct obs_service*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct obs_service *service)
{
	if (!FUNC2(service, "obs_service_activate"))
		return;
	if (!service->output) {
		FUNC0(LOG_WARNING,
		     "obs_service_deactivate: service '%s' "
		     "is not assigned to an output",
		     FUNC1(service));
		return;
	}
	if (service->active)
		return;

	if (service->info.activate)
		service->info.activate(service->context.data,
				       service->context.settings);
	service->active = true;
}