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
struct TYPE_6__ {scalar_t__ type; } ;
struct TYPE_7__ {int /*<<< orphan*/ * media; TYPE_1__ info; } ;
typedef  TYPE_2__ obs_encoder_t ;
typedef  int /*<<< orphan*/  audio_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_WARNING ; 
 scalar_t__ OBS_ENCODER_AUDIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__ const*,char*) ; 

audio_t *FUNC3(const obs_encoder_t *encoder)
{
	if (!FUNC2(encoder, "obs_encoder_audio"))
		return NULL;
	if (encoder->info.type != OBS_ENCODER_AUDIO) {
		FUNC0(LOG_WARNING,
		     "obs_encoder_set_audio: "
		     "encoder '%s' is not an audio encoder",
		     FUNC1(encoder));
		return NULL;
	}

	return encoder->media;
}