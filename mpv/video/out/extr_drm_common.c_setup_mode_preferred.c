
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int type; } ;
struct TYPE_4__ {TYPE_3__ mode; } ;
struct kms {TYPE_2__* connector; TYPE_1__ mode; } ;
typedef TYPE_3__ drmModeModeInfo ;
struct TYPE_5__ {unsigned int count_modes; TYPE_3__* modes; } ;


 int DRM_MODE_TYPE_PREFERRED ;
 int MP_WARN (struct kms*,char*) ;

__attribute__((used)) static bool setup_mode_preferred(struct kms *kms)
{
    for (unsigned int i = 0; i < kms->connector->count_modes; ++i) {
        drmModeModeInfo *current_mode = &kms->connector->modes[i];
        if (current_mode->type & DRM_MODE_TYPE_PREFERRED) {
            kms->mode.mode = *current_mode;
            return 1;
        }
    }


    MP_WARN(kms, "Could not find any preferred mode. Picking the first mode.\n");
    kms->mode.mode = kms->connector->modes[0];
    return 1;
}
