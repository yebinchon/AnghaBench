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
struct mp_osd_res {int w; int h; } ;
struct mpgl_osd {struct mp_osd_res osd_res; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int*) ; 

__attribute__((used)) static void FUNC1(struct mpgl_osd *ctx, struct mp_osd_res res, int stereo_mode)
{
    int div[2];
    FUNC0(stereo_mode, div);

    res.w /= div[0];
    res.h /= div[1];
    ctx->osd_res = res;
}