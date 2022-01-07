
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ Denominator; scalar_t__ Numerator; } ;
struct TYPE_7__ {TYPE_4__ vSyncFreq; } ;
struct TYPE_6__ {TYPE_2__ targetVideoSignalInfo; } ;
struct TYPE_8__ {scalar_t__ infoType; TYPE_1__ targetMode; } ;
typedef TYPE_2__ DISPLAYCONFIG_VIDEO_SIGNAL_INFO ;
typedef TYPE_3__ DISPLAYCONFIG_MODE_INFO ;


 scalar_t__ DISPLAYCONFIG_MODE_INFO_TYPE_TARGET ;
 int is_valid_refresh_rate (TYPE_4__) ;

__attribute__((used)) static double get_refresh_rate_from_mode(DISPLAYCONFIG_MODE_INFO *mode)
{
    if (mode->infoType != DISPLAYCONFIG_MODE_INFO_TYPE_TARGET)
        return 0.0;

    DISPLAYCONFIG_VIDEO_SIGNAL_INFO *info =
        &mode->targetMode.targetVideoSignalInfo;
    if (!is_valid_refresh_rate(info->vSyncFreq))
        return 0.0;

    return ((double)info->vSyncFreq.Numerator) /
           ((double)info->vSyncFreq.Denominator);
}
