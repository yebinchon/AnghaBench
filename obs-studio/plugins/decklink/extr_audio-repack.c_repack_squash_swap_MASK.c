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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct audio_repack {int extra_dst_size; scalar_t__ packet_buffer; } ;
typedef  int /*<<< orphan*/  __m128i ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct audio_repack*,int) ; 

int FUNC5(struct audio_repack *repack, const uint8_t *bsrc,
		       uint32_t frame_count)
{
	if (FUNC4(repack, frame_count) < 0)
		return -1;
	int squash = repack->extra_dst_size;
	const __m128i *src = (__m128i *)bsrc;
	const __m128i *esrc = src + frame_count;
	uint16_t *dst = (uint16_t *)repack->packet_buffer;
	while (src != esrc) {
		__m128i target = FUNC1(src++);
		__m128i buf =
			FUNC2(target, FUNC0(2, 3, 1, 0));
		FUNC3((__m128i *)dst, buf);
		dst += 8 - squash;
	}
	return 0;
}