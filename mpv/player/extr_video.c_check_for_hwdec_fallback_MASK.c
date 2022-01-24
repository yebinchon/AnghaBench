#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vo_chain {TYPE_2__* filter; TYPE_1__* track; } ;
struct MPContext {struct vo_chain* vo_chain; } ;
struct TYPE_4__ {int /*<<< orphan*/  failed_output_conversion; } ;
struct TYPE_3__ {int /*<<< orphan*/  dec; } ;

/* Variables and functions */
 scalar_t__ CONTROL_OK ; 
 int /*<<< orphan*/  VDCTRL_FORCE_HWDEC_FALLBACK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static bool FUNC2(struct MPContext *mpctx)
{
    struct vo_chain *vo_c = mpctx->vo_chain;

    if (!vo_c->filter->failed_output_conversion || !vo_c->track)
        return false;

    if (FUNC0(vo_c->track->dec,
                            VDCTRL_FORCE_HWDEC_FALLBACK, NULL) != CONTROL_OK)
        return false;

    FUNC1(vo_c->filter);
    return true;
}