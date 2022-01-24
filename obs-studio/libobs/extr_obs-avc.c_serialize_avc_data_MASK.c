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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct serializer {int dummy; } ;

/* Variables and functions */
 int OBS_NAL_SLICE ; 
 int OBS_NAL_SLICE_IDR ; 
 int* FUNC0 (int const*,int const*) ; 
 int /*<<< orphan*/  FUNC1 (struct serializer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct serializer*,int const*,int) ; 

__attribute__((used)) static void FUNC3(struct serializer *s, const uint8_t *data,
			       size_t size, bool *is_keyframe, int *priority)
{
	const uint8_t *nal_start, *nal_end;
	const uint8_t *end = data + size;
	int type;

	nal_start = FUNC0(data, end);
	while (true) {
		while (nal_start < end && !*(nal_start++))
			;

		if (nal_start == end)
			break;

		type = nal_start[0] & 0x1F;

		if (type == OBS_NAL_SLICE_IDR || type == OBS_NAL_SLICE) {
			if (is_keyframe)
				*is_keyframe = (type == OBS_NAL_SLICE_IDR);
			if (priority)
				*priority = nal_start[0] >> 5;
		}

		nal_end = FUNC0(nal_start, end);
		FUNC1(s, (uint32_t)(nal_end - nal_start));
		FUNC2(s, nal_start, nal_end - nal_start);
		nal_start = nal_end;
	}
}