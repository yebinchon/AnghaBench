
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {unsigned int hdisplay; unsigned int vdisplay; } ;
struct TYPE_4__ {TYPE_3__ mode; } ;
struct kms {TYPE_1__ mode; TYPE_2__* connector; } ;
typedef TYPE_3__ drmModeModeInfo ;
struct TYPE_5__ {unsigned int count_modes; TYPE_3__* modes; } ;



__attribute__((used)) static bool setup_mode_highest(struct kms *kms)
{
    unsigned int area = 0;
    drmModeModeInfo *highest_resolution_mode = &kms->connector->modes[0];
    for (unsigned int i = 0; i < kms->connector->count_modes; ++i) {
        drmModeModeInfo *current_mode = &kms->connector->modes[i];

        const unsigned int current_area =
            current_mode->hdisplay * current_mode->vdisplay;
        if (current_area > area) {
            highest_resolution_mode = current_mode;
            area = current_area;
        }
    }

    kms->mode.mode = *highest_resolution_mode;
    return 1;
}
