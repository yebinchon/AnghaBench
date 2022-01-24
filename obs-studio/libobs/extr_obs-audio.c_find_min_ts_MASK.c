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
typedef  scalar_t__ uint64_t ;
struct obs_source {scalar_t__ audio_ts; scalar_t__ next_audio_source; int /*<<< orphan*/  audio_pending; } ;
struct obs_core_data {struct obs_source* first_audio_source; } ;
typedef  struct obs_source obs_source_t ;

/* Variables and functions */
 char const* FUNC0 (struct obs_source*) ; 

__attribute__((used)) static inline const char *FUNC1(struct obs_core_data *data,
				      uint64_t *min_ts)
{
	obs_source_t *buffering_source = NULL;
	struct obs_source *source = data->first_audio_source;
	while (source) {
		if (!source->audio_pending && source->audio_ts &&
		    source->audio_ts < *min_ts) {
			*min_ts = source->audio_ts;
			buffering_source = source;
		}

		source = (struct obs_source *)source->next_audio_source;
	}
	return buffering_source ? FUNC0(buffering_source) : NULL;
}