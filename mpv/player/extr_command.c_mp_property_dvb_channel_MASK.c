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
struct TYPE_3__ {scalar_t__ stop_play; } ;
typedef  TYPE_1__ MPContext ;

/* Variables and functions */
 int M_PROPERTY_OK ; 
 scalar_t__ PT_CURRENT_ENTRY ; 
 scalar_t__ FUNC0 (int,void*) ; 
 int FUNC1 (TYPE_1__*,struct m_property*,int,void*) ; 

__attribute__((used)) static int FUNC2(void *ctx, struct m_property *prop,
                                   int action, void *arg)
{
    MPContext *mpctx = ctx;
    int r = FUNC1(mpctx, prop, action, arg);
    if (r == M_PROPERTY_OK && FUNC0(action, arg)) {
        if (!mpctx->stop_play) {
            mpctx->stop_play = PT_CURRENT_ENTRY;
        }
    }
    return r;
}