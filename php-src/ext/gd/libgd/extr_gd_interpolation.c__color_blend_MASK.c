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

/* Variables and functions */
 int const gdAlphaMax ; 
 int const gdAlphaOpaque ; 
 int const gdAlphaTransparent ; 
 int FUNC0 (int const) ; 
 int const FUNC1 (int const) ; 
 int const FUNC2 (int const) ; 
 int const FUNC3 (int const) ; 

__attribute__((used)) static inline int FUNC4 (const int dst, const int src)
{
    const int src_alpha = FUNC0(src);

    if( src_alpha == gdAlphaOpaque ) {
		return src;
	} else {
		const int dst_alpha = FUNC0(dst);

		if( src_alpha == gdAlphaTransparent ) return dst;
		if( dst_alpha == gdAlphaTransparent ) {
			return src;
		} else {
			register int alpha, red, green, blue;
			const int src_weight = gdAlphaTransparent - src_alpha;
			const int dst_weight = (gdAlphaTransparent - dst_alpha) * src_alpha / gdAlphaMax;
			const int tot_weight = src_weight + dst_weight;

			alpha = src_alpha * dst_alpha / gdAlphaMax;

			red = (FUNC3(src) * src_weight
				   + FUNC3(dst) * dst_weight) / tot_weight;
			green = (FUNC2(src) * src_weight
				   + FUNC2(dst) * dst_weight) / tot_weight;
			blue = (FUNC1(src) * src_weight
				   + FUNC1(dst) * dst_weight) / tot_weight;

			return ((alpha << 24) + (red << 16) + (green << 8) + blue);
		}
	}
}