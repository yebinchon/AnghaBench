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
struct obs_view {int /*<<< orphan*/  channels_mutex; struct obs_source** channels; } ;
struct obs_source {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUX_VIEW ; 
 size_t MAX_CHANNELS ; 
 int /*<<< orphan*/  FUNC0 (struct obs_source**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct obs_source*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct obs_source*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct obs_view *view)
{
	if (!view)
		return;

	for (size_t i = 0; i < MAX_CHANNELS; i++) {
		struct obs_source *source = view->channels[i];
		if (source) {
			FUNC1(source, AUX_VIEW);
			FUNC2(source);
		}
	}

	FUNC0(view->channels, 0, sizeof(view->channels));
	FUNC3(&view->channels_mutex);
}