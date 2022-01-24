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
typedef  int /*<<< orphan*/  FONScontext ;

/* Variables and functions */
 int APREC ; 
 float FUNC0 (float) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int,int,int,int) ; 

__attribute__((used)) static void FUNC3(FONScontext* stash, unsigned char* dst, int w, int h, int dstStride, int blur)
{
	int alpha;
	float sigma;
	(void)stash;

	if (blur < 1)
		return;
	// Calculate the alpha such that 90% of the kernel is within the radius. (Kernel extends to infinity)
	sigma = (float)blur * 0.57735f; // 1 / sqrt(3)
	alpha = (int)((1<<APREC) * (1.0f - FUNC0(-2.3f / (sigma+1.0f))));
	FUNC2(dst, w, h, dstStride, alpha);
	FUNC1(dst, w, h, dstStride, alpha);
	FUNC2(dst, w, h, dstStride, alpha);
	FUNC1(dst, w, h, dstStride, alpha);
//	fons__blurrows(dst, w, h, dstStride, alpha);
//	fons__blurcols(dst, w, h, dstStride, alpha);
}