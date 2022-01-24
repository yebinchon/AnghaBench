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
struct TYPE_2__ {scalar_t__ hwdec_devs; } ;
typedef  TYPE_1__ vd_ffmpeg_ctx ;
struct mp_filter {int /*<<< orphan*/  log; int /*<<< orphan*/  global; TYPE_1__* priv; } ;
struct hwdec_info {int /*<<< orphan*/  lavc_device; scalar_t__ copying; } ;
struct hwcontext_fns {int /*<<< orphan*/ * (* create_dev ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hwcontext_create_dev_params*) ;} ;
struct hwcontext_create_dev_params {int probing; } ;
typedef  int /*<<< orphan*/  AVBufferRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct hwcontext_fns* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hwcontext_create_dev_params*) ; 

__attribute__((used)) static AVBufferRef *FUNC6(struct mp_filter *vd,
                                     struct hwdec_info *hwdec,
                                     bool autoprobe)
{
    vd_ffmpeg_ctx *ctx = vd->priv;
    FUNC0(hwdec->lavc_device);

    if (hwdec->copying) {
        const struct hwcontext_fns *fns =
            FUNC4(hwdec->lavc_device);
        if (fns && fns->create_dev) {
            struct hwcontext_create_dev_params params = {
                .probing = autoprobe,
            };
            return fns->create_dev(vd->global, vd->log, &params);
        } else {
            AVBufferRef* ref = NULL;
            FUNC1(&ref, hwdec->lavc_device, NULL, NULL, 0);
            return ref;
        }
    } else if (ctx->hwdec_devs) {
        FUNC3(ctx->hwdec_devs);
        return FUNC2(ctx->hwdec_devs, hwdec->lavc_device);
    }

    return NULL;
}