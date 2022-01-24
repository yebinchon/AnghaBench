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
struct game_capture {int cx; int cy; int pitch; int /*<<< orphan*/ ** texture_buffers; } ;
typedef  int /*<<< orphan*/  __m128i ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct game_capture *gc, int cur_texture,
			    uint8_t *data, uint32_t pitch)
{
	uint8_t *input = gc->texture_buffers[cur_texture];
	uint32_t gc_cx = gc->cx;
	uint32_t gc_cy = gc->cy;
	uint32_t gc_pitch = gc->pitch;

	for (uint32_t y = 0; y < gc_cy; y++) {
		uint8_t *row = input + (gc_pitch * y);
		uint8_t *out = data + (pitch * y);

		for (uint32_t x = 0; x < gc_cx; x += 8) {
			__m128i pixels_blue, pixels_green, pixels_red;
			__m128i pixels_result;
			__m128i *pixels_dest;

			__m128i *pixels_src =
				(__m128i *)(row + x * sizeof(uint16_t));
			__m128i pixels = FUNC2(pixels_src);

			__m128i zero = FUNC5();
			__m128i pixels_low = FUNC9(pixels, zero);
			__m128i pixels_high = FUNC8(pixels, zero);

			__m128i blue_channel_mask = FUNC4(0x0000001F);
			__m128i blue_offset = FUNC4(0x00000003);
			__m128i green_channel_mask = FUNC4(0x000007E0);
			__m128i green_offset = FUNC4(0x00000008);
			__m128i red_channel_mask = FUNC4(0x0000F800);
			__m128i red_offset = FUNC4(0x00000300);

			pixels_blue =
				FUNC1(pixels_low, blue_channel_mask);
			pixels_blue = FUNC6(pixels_blue, 3);
			pixels_blue = FUNC0(pixels_blue, blue_offset);

			pixels_green =
				FUNC1(pixels_low, green_channel_mask);
			pixels_green =
				FUNC0(pixels_green, green_offset);
			pixels_green = FUNC6(pixels_green, 5);

			pixels_red =
				FUNC1(pixels_low, red_channel_mask);
			pixels_red = FUNC0(pixels_red, red_offset);
			pixels_red = FUNC6(pixels_red, 8);

			pixels_result = FUNC4(0xFF000000);
			pixels_result =
				FUNC3(pixels_result, pixels_blue);
			pixels_result =
				FUNC3(pixels_result, pixels_green);
			pixels_result = FUNC3(pixels_result, pixels_red);

			pixels_dest = (__m128i *)(out + x * sizeof(uint32_t));
			FUNC7(pixels_dest, pixels_result);

			pixels_blue =
				FUNC1(pixels_high, blue_channel_mask);
			pixels_blue = FUNC6(pixels_blue, 3);
			pixels_blue = FUNC0(pixels_blue, blue_offset);

			pixels_green =
				FUNC1(pixels_high, green_channel_mask);
			pixels_green =
				FUNC0(pixels_green, green_offset);
			pixels_green = FUNC6(pixels_green, 5);

			pixels_red =
				FUNC1(pixels_high, red_channel_mask);
			pixels_red = FUNC0(pixels_red, red_offset);
			pixels_red = FUNC6(pixels_red, 8);

			pixels_result = FUNC4(0xFF000000);
			pixels_result =
				FUNC3(pixels_result, pixels_blue);
			pixels_result =
				FUNC3(pixels_result, pixels_green);
			pixels_result = FUNC3(pixels_result, pixels_red);

			pixels_dest =
				(__m128i *)(out + (x + 4) * sizeof(uint32_t));
			FUNC7(pixels_dest, pixels_result);
		}
	}
}