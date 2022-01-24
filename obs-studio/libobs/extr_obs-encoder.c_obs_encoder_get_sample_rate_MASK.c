#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_6__ {scalar_t__ type; } ;
struct TYPE_7__ {scalar_t__ samplerate; int /*<<< orphan*/  media; TYPE_1__ info; } ;
typedef  TYPE_2__ obs_encoder_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_WARNING ; 
 scalar_t__ OBS_ENCODER_AUDIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__ const*,char*) ; 

uint32_t FUNC4(const obs_encoder_t *encoder)
{
	if (!FUNC3(encoder, "obs_encoder_get_sample_rate"))
		return 0;
	if (encoder->info.type != OBS_ENCODER_AUDIO) {
		FUNC1(LOG_WARNING,
		     "obs_encoder_get_sample_rate: "
		     "encoder '%s' is not an audio encoder",
		     FUNC2(encoder));
		return 0;
	}
	if (!encoder->media)
		return 0;

	return encoder->samplerate != 0
		       ? encoder->samplerate
		       : FUNC0(encoder->media);
}