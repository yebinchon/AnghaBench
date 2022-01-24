#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ scaled_height; scalar_t__ scaled_width; TYPE_3__* video_encoder; } ;
typedef  TYPE_2__ obs_output_t ;
struct TYPE_12__ {scalar_t__ type; } ;
struct TYPE_14__ {TYPE_1__ info; } ;
typedef  TYPE_3__ obs_encoder_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_WARNING ; 
 scalar_t__ OBS_ENCODER_VIDEO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 

void FUNC5(obs_output_t *output, obs_encoder_t *encoder)
{
	if (!FUNC4(output, "obs_output_set_video_encoder"))
		return;
	if (encoder && encoder->info.type != OBS_ENCODER_VIDEO) {
		FUNC0(LOG_WARNING, "obs_output_set_video_encoder: "
				  "encoder passed is not a video encoder");
		return;
	}

	if (output->video_encoder == encoder)
		return;

	FUNC2(output->video_encoder, output);
	FUNC1(encoder, output);
	output->video_encoder = encoder;

	/* set the preferred resolution on the encoder */
	if (output->scaled_width && output->scaled_height)
		FUNC3(output->video_encoder,
					    output->scaled_width,
					    output->scaled_height);
}