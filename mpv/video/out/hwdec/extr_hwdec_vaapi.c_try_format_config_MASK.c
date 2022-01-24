#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ra_hwdec {struct priv_owner* priv; } ;
struct priv_owner {TYPE_1__* ctx; } ;
struct TYPE_6__ {scalar_t__* valid_sw_formats; } ;
struct TYPE_5__ {int /*<<< orphan*/  av_device_ref; } ;
typedef  int /*<<< orphan*/  AVVAAPIHWConfig ;
typedef  TYPE_2__ AVHWFramesConstraints ;

/* Variables and functions */
 scalar_t__ AV_PIX_FMT_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct ra_hwdec*,char*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC3 (struct ra_hwdec*,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct ra_hwdec *hw, AVVAAPIHWConfig *hwconfig)
{
    struct priv_owner *p = hw->priv;
    AVHWFramesConstraints *fc =
            FUNC1(p->ctx->av_device_ref, hwconfig);
    if (!fc) {
        FUNC0(hw, "failed to retrieve libavutil frame constraints\n");
        return;
    }
    for (int n = 0; fc->valid_sw_formats &&
                    fc->valid_sw_formats[n] != AV_PIX_FMT_NONE; n++)
        FUNC3(hw, fc->valid_sw_formats[n]);
    FUNC2(&fc);
}