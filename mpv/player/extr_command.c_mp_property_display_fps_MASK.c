#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct m_property {int dummy; } ;
struct TYPE_3__ {scalar_t__ video_out; } ;
typedef  TYPE_1__ MPContext ;

/* Variables and functions */
 int M_PROPERTY_SET ; 
 int FUNC0 (int,void*,double) ; 
 int FUNC1 (TYPE_1__*,struct m_property*,int,void*) ; 
 double FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(void *ctx, struct m_property *prop,
                                   int action, void *arg)
{
    MPContext *mpctx = ctx;
    double fps = mpctx->video_out ? FUNC2(mpctx->video_out) : 0;
    if (fps > 0 && action != M_PROPERTY_SET)
        return FUNC0(action, arg, fps);
    return FUNC1(mpctx, prop, action, arg);
}