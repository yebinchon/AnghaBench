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
typedef  int ut32 ;

/* Variables and functions */
 void* FUNC0 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ut32 FUNC1(int r, int g, int b) {
	bool grey = (r > 0 && r < 255 && r == g && r == b);
	if (grey) {
		return 232 + (int)((double)r / (255 / 24.1));
	}
#if 0
	const double M = 16;
	double R = r;
	double G = g;
	double B = b;
	R = R /256 * 216;
	R /= 256 * 216;
	R /= 256 * 216;
	r = R = R_DIM (R / 16, 0, 16);
	g = G = R_DIM (G / 16, 0, 16);
	b = B = R_DIM (B / 16, 0, 16);
	r &= 0xff;
	g &= 0xff;
	b &= 0xff;
	return (ut32)((G * M * M)  + (g * M) + b) + 16;
#else
	const int k = (256.0 / 6);
	r = FUNC0 (r / k, 0, 6);
	g = FUNC0 (g / k, 0, 6);
	b = FUNC0 (b / k, 0, 6);
	return 16 + (r * 36) + (g * 6) + b;
#endif
}