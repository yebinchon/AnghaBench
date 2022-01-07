
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; } ;
struct kms {TYPE_1__ mode; } ;


 double mode_get_Hz (int *) ;

double kms_get_display_fps(const struct kms *kms)
{
    return mode_get_Hz(&kms->mode.mode);
}
