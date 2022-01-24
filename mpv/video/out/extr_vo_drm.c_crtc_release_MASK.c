#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vo {struct priv* priv; } ;
struct priv {int active; TYPE_3__* old_crtc; TYPE_2__* kms; int /*<<< orphan*/  ev; scalar_t__ waiting_for_flip; } ;
struct TYPE_6__ {int /*<<< orphan*/  mode; int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  buffer_id; int /*<<< orphan*/  crtc_id; } ;
struct TYPE_5__ {TYPE_1__* connector; int /*<<< orphan*/  fd; } ;
struct TYPE_4__ {int /*<<< orphan*/  connector_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vo*,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct vo *vo)
{
    struct priv *p = vo->priv;

    if (!p->active)
        return;
    p->active = false;

    // wait for current page flip
    while (p->waiting_for_flip) {
        int ret = FUNC1(p->kms->fd, &p->ev);
        if (ret) {
            FUNC0(vo, "drmHandleEvent failed: %i\n", ret);
            break;
        }
    }

    if (p->old_crtc) {
        FUNC3(p->kms->fd, p->old_crtc->crtc_id,
                       p->old_crtc->buffer_id,
                       p->old_crtc->x, p->old_crtc->y,
                       &p->kms->connector->connector_id, 1,
                       &p->old_crtc->mode);
        FUNC2(p->old_crtc);
        p->old_crtc = NULL;
    }
}