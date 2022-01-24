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
 int gdAlphaMax ; 
 int gdAlphaOpaque ; 
 int gdAlphaTransparent ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 

int FUNC4 (int dst, int src) {
    int src_alpha = FUNC0(src);
    int dst_alpha, alpha, red, green, blue;
    int src_weight, dst_weight, tot_weight;

/* -------------------------------------------------------------------- */
/*      Simple cases we want to handle fast.                            */
/* -------------------------------------------------------------------- */
    if( src_alpha == gdAlphaOpaque )
        return src;

    dst_alpha = FUNC0(dst);
    if( src_alpha == gdAlphaTransparent )
        return dst;
    if( dst_alpha == gdAlphaTransparent )
        return src;

/* -------------------------------------------------------------------- */
/*      What will the source and destination alphas be?  Note that      */
/*      the destination weighting is substantially reduced as the       */
/*      overlay becomes quite opaque.                                   */
/* -------------------------------------------------------------------- */
    src_weight = gdAlphaTransparent - src_alpha;
    dst_weight = (gdAlphaTransparent - dst_alpha) * src_alpha / gdAlphaMax;
    tot_weight = src_weight + dst_weight;

/* -------------------------------------------------------------------- */
/*      What red, green and blue result values will we use?             */
/* -------------------------------------------------------------------- */
    alpha = src_alpha * dst_alpha / gdAlphaMax;

    red = (FUNC3(src) * src_weight
           + FUNC3(dst) * dst_weight) / tot_weight;
    green = (FUNC2(src) * src_weight
           + FUNC2(dst) * dst_weight) / tot_weight;
    blue = (FUNC1(src) * src_weight
           + FUNC1(dst) * dst_weight) / tot_weight;

/* -------------------------------------------------------------------- */
/*      Return merged result.                                           */
/* -------------------------------------------------------------------- */
    return ((alpha << 24) + (red << 16) + (green << 8) + blue);

}