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

/* Variables and functions */
 int FUNC0 () ; 

__attribute__((used)) static inline void FUNC1(uint32_t *pixels)
{
	size_t x, y;

	for (y = 0; y < 20; y++) {
		for (x = 0; x < 20; x++) {
			uint32_t pixel = 0;
			pixel |= (FUNC0() % 256);
			pixel |= (FUNC0() % 256) << 8;
			pixel |= (FUNC0() % 256) << 16;
			//pixel |= (rand()%256) << 24;
			//pixel |= 0xFFFFFFFF;
			pixels[y * 20 + x] = pixel;
		}
	}
}