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
struct TYPE_7__ {scalar_t__ scaled_width; int /*<<< orphan*/  media; TYPE_1__ info; } ;
typedef  TYPE_2__ obs_encoder_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_WARNING ; 
 scalar_t__ OBS_ENCODER_VIDEO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__ const*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

uint32_t FUNC4(const obs_encoder_t *encoder)
{
	if (!FUNC2(encoder, "obs_encoder_get_width"))
		return 0;
	if (encoder->info.type != OBS_ENCODER_VIDEO) {
		FUNC0(LOG_WARNING,
		     "obs_encoder_get_width: "
		     "encoder '%s' is not a video encoder",
		     FUNC1(encoder));
		return 0;
	}
	if (!encoder->media)
		return 0;

	return encoder->scaled_width != 0
		       ? encoder->scaled_width
		       : FUNC3(encoder->media);
}