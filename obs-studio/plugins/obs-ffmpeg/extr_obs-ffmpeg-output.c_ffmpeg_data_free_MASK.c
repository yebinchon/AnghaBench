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
struct ffmpeg_data {scalar_t__ last_error; TYPE_2__* output; int /*<<< orphan*/ * audio_streams; scalar_t__ video; scalar_t__ initialized; } ;
struct TYPE_5__ {int /*<<< orphan*/  pb; TYPE_1__* oformat; } ;
struct TYPE_4__ {int flags; } ;

/* Variables and functions */
 int AVFMT_NOFILE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct ffmpeg_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct ffmpeg_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ffmpeg_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct ffmpeg_data *data)
{
	if (data->initialized)
		FUNC0(data->output);

	if (data->video)
		FUNC5(data);
	if (data->audio_streams) {
		FUNC4(data);
		FUNC6(data->audio_streams);
		data->audio_streams = NULL;
	}

	if (data->output) {
		if ((data->output->oformat->flags & AVFMT_NOFILE) == 0)
			FUNC2(data->output->pb);

		FUNC1(data->output);
	}

	if (data->last_error)
		FUNC3(data->last_error);

	FUNC7(data, 0, sizeof(struct ffmpeg_data));
}