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
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;

/* Variables and functions */
 int AV_PIX_FMT_NONE ; 
 int /*<<< orphan*/  FUNC0 (int*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(int dst1, int dst2, int src)
{
    enum AVPixelFormat dst1pxf = FUNC1(dst1);
    enum AVPixelFormat dst2pxf = FUNC1(dst2);
    enum AVPixelFormat srcpxf = FUNC1(src);
    enum AVPixelFormat dstlist[] = {dst1pxf, dst2pxf, AV_PIX_FMT_NONE};
    return FUNC2(FUNC0(dstlist, srcpxf, 1, 0));
}