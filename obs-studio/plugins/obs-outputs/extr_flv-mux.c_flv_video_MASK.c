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
typedef  int uint32_t ;
struct serializer {int dummy; } ;
struct encoder_packet {scalar_t__ size; int /*<<< orphan*/  data; scalar_t__ keyframe; scalar_t__ dts; scalar_t__ pts; } ;
typedef  scalar_t__ int64_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_DEBUG ; 
 int RTMP_PACKET_TYPE_VIDEO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (struct encoder_packet*,scalar_t__) ; 
 int last_time ; 
 int /*<<< orphan*/  FUNC2 (struct serializer*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct serializer*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct serializer*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct serializer*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (struct serializer*) ; 

__attribute__((used)) static void FUNC7(struct serializer *s, int32_t dts_offset,
		      struct encoder_packet *packet, bool is_header)
{
	int64_t offset = packet->pts - packet->dts;
	int32_t time_ms = FUNC1(packet, packet->dts) - dts_offset;

	if (!packet->data || !packet->size)
		return;

	FUNC2(s, RTMP_PACKET_TYPE_VIDEO);

#ifdef DEBUG_TIMESTAMPS
	blog(LOG_DEBUG, "Video: %lu", time_ms);

	if (last_time > time_ms)
		blog(LOG_DEBUG, "Non-monotonic");

	last_time = time_ms;
#endif

	FUNC3(s, (uint32_t)packet->size + 5);
	FUNC3(s, time_ms);
	FUNC2(s, (time_ms >> 24) & 0x7F);
	FUNC3(s, 0);

	/* these are the 5 extra bytes mentioned above */
	FUNC2(s, packet->keyframe ? 0x17 : 0x27);
	FUNC2(s, is_header ? 0 : 1);
	FUNC3(s, FUNC1(packet, offset));
	FUNC5(s, packet->data, packet->size);

	/* write tag size (starting byte doesn't count) */
	FUNC4(s, (uint32_t)FUNC6(s) - 1);
}