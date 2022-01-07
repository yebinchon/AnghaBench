
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ WORD ;
struct TYPE_3__ {int dwAxes; int dwButtons; } ;
typedef TYPE_1__ DIDEVCAPS ;
typedef int BOOL ;


 int ARRAY_SIZE (scalar_t__*) ;
 scalar_t__* PID_XBOX_CONTROLLERS ;
 int TRUE ;
 scalar_t__ VID_MICROSOFT ;

BOOL is_xinput_device(const DIDEVCAPS *devcaps, WORD vid, WORD pid)
{
    int i;

    if (vid == VID_MICROSOFT)
    {
        for (i = 0; i < ARRAY_SIZE(PID_XBOX_CONTROLLERS); i++)
            if (pid == PID_XBOX_CONTROLLERS[i]) return TRUE;
    }

    return (devcaps->dwAxes == 6 && devcaps->dwButtons >= 14);
}
