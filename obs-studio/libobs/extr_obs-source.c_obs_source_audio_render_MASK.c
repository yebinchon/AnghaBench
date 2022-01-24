#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_7__ {scalar_t__ audio_mix; scalar_t__ audio_render; } ;
struct TYPE_8__ {int audio_pending; int /*<<< orphan*/  audio_ts; TYPE_1__ info; int /*<<< orphan*/ ** audio_output_buf; } ;
typedef  TYPE_2__ obs_source_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,size_t,size_t,size_t) ; 

void FUNC3(obs_source_t *source, uint32_t mixers,
			     size_t channels, size_t sample_rate, size_t size)
{
	if (!source->audio_output_buf[0][0]) {
		source->audio_pending = true;
		return;
	}

	if (source->info.audio_render) {
		FUNC1(source, mixers, channels, sample_rate);
		return;
	}

	if (source->info.audio_mix) {
		FUNC0(source, channels, sample_rate);
	}

	if (!source->audio_ts) {
		source->audio_pending = true;
		return;
	}

	FUNC2(source, mixers, channels, sample_rate, size);
}