
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mode; } ;
struct kms {TYPE_2__ mode; TYPE_1__* connector; } ;
typedef int drmModeModeInfo ;
struct TYPE_3__ {unsigned int count_modes; int * modes; } ;


 int MP_ERR (struct kms*,char*,char const*) ;
 scalar_t__ mode_match (int *,unsigned int,unsigned int,double) ;

__attribute__((used)) static bool setup_mode_by_numbers(struct kms *kms,
                                  unsigned int width,
                                  unsigned int height,
                                  double refresh,
                                  const char *mode_spec)
{
    for (unsigned int i = 0; i < kms->connector->count_modes; ++i) {
        drmModeModeInfo *current_mode = &kms->connector->modes[i];
        if (mode_match(current_mode, width, height, refresh)) {
            kms->mode.mode = *current_mode;
            return 1;
        }
    }

    MP_ERR(kms, "Could not find mode matching %s\n", mode_spec);
    return 0;
}
