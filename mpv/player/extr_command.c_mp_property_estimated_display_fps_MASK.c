#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vo {int dummy; } ;
struct m_property {int dummy; } ;
struct TYPE_2__ {struct vo* video_out; } ;
typedef  TYPE_1__ MPContext ;

/* Variables and functions */
 int M_PROPERTY_UNAVAILABLE ; 
 int FUNC0 (int,void*,double) ; 
 double FUNC1 (struct vo*) ; 

__attribute__((used)) static int FUNC2(void *ctx, struct m_property *prop,
                                             int action, void *arg)
{
    MPContext *mpctx = ctx;
    struct vo *vo = mpctx->video_out;
    if (!vo)
        return M_PROPERTY_UNAVAILABLE;
    double interval = FUNC1(vo);
    if (interval <= 0)
        return M_PROPERTY_UNAVAILABLE;
    return FUNC0(action, arg, 1.0 / interval);
}