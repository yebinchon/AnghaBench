#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct audio_convert_info {int dummy; } ;
struct TYPE_4__ {int audio_conversion_set; struct audio_convert_info audio_conversion; } ;
typedef  TYPE_1__ obs_output_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct audio_convert_info const*,char*) ; 

void FUNC2(
	obs_output_t *output, const struct audio_convert_info *conversion)
{
	if (!FUNC0(output, "obs_output_set_audio_conversion"))
		return;
	if (!FUNC1(conversion, "obs_output_set_audio_conversion"))
		return;

	output->audio_conversion = *conversion;
	output->audio_conversion_set = true;
}