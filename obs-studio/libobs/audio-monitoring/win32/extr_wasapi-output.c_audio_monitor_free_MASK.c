#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct audio_monitor {int /*<<< orphan*/  buf; int /*<<< orphan*/  delay_buffer; int /*<<< orphan*/  resampler; TYPE_2__* render; TYPE_2__* client; TYPE_2__* device; scalar_t__ source; scalar_t__ ignore; } ;
struct TYPE_5__ {TYPE_1__* lpVtbl; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* Stop ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,struct audio_monitor*) ; 
 int /*<<< orphan*/  on_audio_playback ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static inline void FUNC6(struct audio_monitor *monitor)
{
	if (monitor->ignore)
		return;

	if (monitor->source) {
		FUNC3(
			monitor->source, on_audio_playback, monitor);
	}

	if (monitor->client)
		monitor->client->lpVtbl->Stop(monitor->client);

	FUNC4(monitor->device);
	FUNC4(monitor->client);
	FUNC4(monitor->render);
	FUNC0(monitor->resampler);
	FUNC1(&monitor->delay_buffer);
	FUNC2(monitor->buf);
}