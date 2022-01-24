#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  audio_active; } ;
typedef  TYPE_1__ obs_source_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 

void FUNC3(obs_source_t *source, bool active)
{
	if (!FUNC1(source, "obs_source_set_audio_active"))
		return;

	if (FUNC2(&source->audio_active, active) == active)
		return;

	if (active)
		FUNC0(source, "source_audio_activate",
				    "audio_activate");
	else
		FUNC0(source, "source_audio_deactivate",
				    "audio_deactivate");
}