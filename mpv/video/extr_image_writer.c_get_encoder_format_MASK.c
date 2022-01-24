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
struct AVCodec {int* pix_fmts; } ;
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;

/* Variables and functions */
 int const AV_PIX_FMT_NONE ; 
 int FUNC0 (int) ; 
 int FUNC1 (int,int,int) ; 
 int FUNC2 (int const) ; 

__attribute__((used)) static int FUNC3(struct AVCodec *codec, int srcfmt, bool highdepth)
{
    const enum AVPixelFormat *pix_fmts = codec->pix_fmts;
    int current = 0;
    for (int n = 0; pix_fmts && pix_fmts[n] != AV_PIX_FMT_NONE; n++) {
        int fmt = FUNC2(pix_fmts[n]);
        if (!fmt)
            continue;
        // Ignore formats larger than 8 bit per pixel.
        if (!highdepth && FUNC0(fmt) > 32)
            continue;
        current = current ? FUNC1(current, fmt, srcfmt) : fmt;
    }
    return current;
}