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
struct priv {double expected_next_pts; TYPE_2__* enc; int /*<<< orphan*/  shutdown; } ;
struct encode_lavc_context {int /*<<< orphan*/  lock; scalar_t__ discontinuity_pts_offset; } ;
struct ao {struct encode_lavc_context* encode_lavc_ctx; struct priv* priv; } ;
struct TYPE_4__ {TYPE_1__* options; } ;
struct TYPE_3__ {int /*<<< orphan*/  rawts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ao*,double,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ao *ao)
{
    struct priv *ac = ao->priv;
    struct encode_lavc_context *ectx = ao->encode_lavc_ctx;

    if (!ac->shutdown) {
        double outpts = ac->expected_next_pts;

        FUNC2(&ectx->lock);
        if (!ac->enc->options->rawts)
            outpts += ectx->discontinuity_pts_offset;
        FUNC3(&ectx->lock);

        outpts += FUNC1(ac->enc);
        FUNC0(ao, outpts, NULL);
    }
}