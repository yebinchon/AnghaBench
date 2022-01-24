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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct audio_monitor {int bytes_per_channel; int /*<<< orphan*/  channels; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float) ; 

void FUNC3(const struct audio_monitor *monitor, float vol,
		    uint8_t *const *resample_data, uint32_t resample_frames)
{
	switch (monitor->bytes_per_channel) {
	case 1:
		FUNC0(resample_data[0], resample_frames,
			     monitor->channels, vol);
		break;
	case 2:
		FUNC2(resample_data[0], resample_frames,
			      monitor->channels, vol);
		break;
	default:
		FUNC1(resample_data[0], resample_frames,
			      monitor->channels, vol);
		break;
	}
}