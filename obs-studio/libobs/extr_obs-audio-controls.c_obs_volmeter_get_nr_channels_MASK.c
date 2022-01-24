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
struct obs_audio_info {int /*<<< orphan*/  speakers; } ;
struct TYPE_7__ {TYPE_2__* source; } ;
typedef  TYPE_3__ obs_volmeter_t ;
struct TYPE_5__ {int /*<<< orphan*/  speakers; } ;
struct TYPE_6__ {TYPE_1__ sample_info; } ;

/* Variables and functions */
 int FUNC0 (int,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct obs_audio_info*) ; 

int FUNC3(obs_volmeter_t *volmeter)
{
	int source_nr_audio_channels;
	int obs_nr_audio_channels;

	if (volmeter->source) {
		source_nr_audio_channels = FUNC1(
			volmeter->source->sample_info.speakers);
	} else {
		source_nr_audio_channels = 1;
	}

	struct obs_audio_info audio_info;
	if (FUNC2(&audio_info)) {
		obs_nr_audio_channels = FUNC1(audio_info.speakers);
	} else {
		obs_nr_audio_channels = 2;
	}

	return FUNC0(source_nr_audio_channels, 1, obs_nr_audio_channels);
}