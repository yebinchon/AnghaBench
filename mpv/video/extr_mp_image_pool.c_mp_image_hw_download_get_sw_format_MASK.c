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
struct mp_image {int /*<<< orphan*/  hwctx; } ;
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;

/* Variables and functions */
 int /*<<< orphan*/  AV_HWFRAME_TRANSFER_DIRECTION_FROM ; 
 int AV_PIX_FMT_NONE ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int**,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 

int FUNC3(struct mp_image *src)
{
    if (!src->hwctx)
        return 0;

    // Try to find the first format which we can apparently use.
    int imgfmt = 0;
    enum AVPixelFormat *fmts;
    if (FUNC1(src->hwctx,
            AV_HWFRAME_TRANSFER_DIRECTION_FROM, &fmts, 0) < 0)
        return 0;
    for (int n = 0; fmts[n] != AV_PIX_FMT_NONE; n++) {
        imgfmt = FUNC2(fmts[n]);
        if (imgfmt)
            break;
    }
    FUNC0(fmts);

    return imgfmt;
}