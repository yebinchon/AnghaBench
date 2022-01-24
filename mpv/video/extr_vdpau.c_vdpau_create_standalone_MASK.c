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
struct mpv_global {int dummy; } ;
struct TYPE_2__ {struct AVBufferRef* av_device_ref; } ;
struct mp_vdpau_ctx {int close_display; TYPE_1__ hwctx; } ;
struct mp_log {int dummy; } ;
struct hwcontext_create_dev_params {int /*<<< orphan*/  probing; } ;
struct AVBufferRef {int dummy; } ;
typedef  int /*<<< orphan*/  Display ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 struct mp_vdpau_ctx* FUNC3 (struct mp_log*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct AVBufferRef *FUNC4(struct mpv_global *global,
        struct mp_log *log, struct hwcontext_create_dev_params *params)
{
    FUNC1();

    Display *display = FUNC2(NULL);
    if (!display)
        return NULL;

    struct mp_vdpau_ctx *vdp =
        FUNC3(log, display, params->probing);
    if (!vdp) {
        FUNC0(display);
        return NULL;
    }

    vdp->close_display = true;
    return vdp->hwctx.av_device_ref;
}