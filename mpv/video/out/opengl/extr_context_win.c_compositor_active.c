
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ra_ctx {int dummy; } ;
struct TYPE_3__ {int cbSize; } ;
typedef TYPE_1__ DWM_TIMING_INFO ;
typedef scalar_t__ BOOL ;


 int DwmGetCompositionTimingInfo (int ,TYPE_1__*) ;
 int DwmIsCompositionEnabled (scalar_t__*) ;
 scalar_t__ FAILED (int ) ;

__attribute__((used)) static bool compositor_active(struct ra_ctx *ctx)
{

    BOOL enabled = 0;
    if (FAILED(DwmIsCompositionEnabled(&enabled)) || !enabled)
        return 0;




    DWM_TIMING_INFO info = { .cbSize = sizeof(DWM_TIMING_INFO) };
    if (FAILED(DwmGetCompositionTimingInfo(0, &info)))
        return 0;

    return 1;
}
