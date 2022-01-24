#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int format; unsigned int samples_per_sec; int speakers; scalar_t__* data; } ;
struct vlc_source {TYPE_1__ audio; scalar_t__ audio_capacity; } ;
typedef  enum speaker_layout { ____Placeholder_speaker_layout } speaker_layout ;
typedef  enum audio_format { ____Placeholder_audio_format } audio_format ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(void **p_data, char *format, unsigned *rate,
			    unsigned *channels)
{
	struct vlc_source *c = *p_data;
	enum audio_format new_audio_format;

	new_audio_format = FUNC1(format);
	if (*channels > 2)
		*channels = 2;

	/* don't free audio data if the data is the same format */
	if (c->audio.format == new_audio_format &&
	    c->audio.samples_per_sec == *rate &&
	    c->audio.speakers == (enum speaker_layout) * channels)
		return 0;

	c->audio_capacity = 0;
	FUNC0((void *)c->audio.data[0]);

	FUNC2(&c->audio, 0, sizeof(c->audio));
	c->audio.speakers = (enum speaker_layout) * channels;
	c->audio.samples_per_sec = *rate;
	c->audio.format = new_audio_format;
	return 0;
}