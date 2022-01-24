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
struct rtmp_common {scalar_t__* service; } ;
typedef  int /*<<< orphan*/  obs_data_t ;
typedef  int /*<<< orphan*/  json_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC5(struct rtmp_common *service, json_t *root,
			      obs_data_t *video_settings,
			      obs_data_t *audio_settings)
{
	json_t *json_service = FUNC3(root, service->service, NULL);
	json_t *recommended;

	if (!json_service) {
		if (service->service && *service->service)
			FUNC2(LOG_WARNING,
			     "rtmp-common.c: [initialize_output] "
			     "Could not find service '%s'",
			     service->service);
		return;
	}

	recommended = FUNC4(json_service, "recommended");
	if (!recommended)
		return;

	if (video_settings)
		FUNC1(video_settings, recommended);
	if (audio_settings)
		FUNC0(audio_settings, recommended);
}