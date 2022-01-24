#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int type; } ;
struct TYPE_6__ {TYPE_1__ info; } ;
typedef  TYPE_2__ obs_encoder_t ;
typedef  enum obs_encoder_type { ____Placeholder_obs_encoder_type } obs_encoder_type ;

/* Variables and functions */
 int OBS_ENCODER_AUDIO ; 
 scalar_t__ FUNC0 (TYPE_2__ const*,char*) ; 

enum obs_encoder_type FUNC1(const obs_encoder_t *encoder)
{
	return FUNC0(encoder, "obs_encoder_get_type")
		       ? encoder->info.type
		       : OBS_ENCODER_AUDIO;
}