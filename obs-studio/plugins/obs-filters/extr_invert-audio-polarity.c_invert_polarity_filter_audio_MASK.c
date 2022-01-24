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
struct obs_audio_data {int frames; scalar_t__ data; } ;

/* Variables and functions */
 size_t MAX_AV_PLANES ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 

__attribute__((used)) static struct obs_audio_data *
FUNC1(void *unused, struct obs_audio_data *audio)
{
	float **adata = (float **)audio->data;

	for (size_t c = 0; c < MAX_AV_PLANES; c++) {
		register float *channel_data = adata[c];
		register float *channel_end = channel_data + audio->frames;

		if (!channel_data)
			break;

		while (channel_data < channel_end) {
			*(channel_data++) *= -1.0f;
		}
	}

	FUNC0(unused);
	return audio;
}