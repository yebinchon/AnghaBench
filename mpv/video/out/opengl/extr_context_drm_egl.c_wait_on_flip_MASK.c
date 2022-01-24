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
struct ra_ctx {int /*<<< orphan*/  vo; struct priv* priv; } ;
struct priv {int /*<<< orphan*/  ev; TYPE_1__* kms; scalar_t__ waiting_for_flip; } ;
struct pollfd {int events; int revents; int /*<<< orphan*/  fd; } ;
struct TYPE_2__ {int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int const) ; 
 int POLLIN ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pollfd*,int,int const) ; 

__attribute__((used)) static void FUNC3(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;

    // poll page flip finish event
    while (p->waiting_for_flip) {
        const int timeout_ms = 3000;
        struct pollfd fds[1] = { { .events = POLLIN, .fd = p->kms->fd } };
        FUNC2(fds, 1, timeout_ms);
        if (fds[0].revents & POLLIN) {
            const int ret = FUNC1(p->kms->fd, &p->ev);
            if (ret != 0) {
                FUNC0(ctx->vo, "drmHandleEvent failed: %i\n", ret);
                return;
            }
        }
    }
}