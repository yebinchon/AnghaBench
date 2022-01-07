
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nReshowTime; int nAutoPopTime; int nInitialTime; } ;
typedef TYPE_1__ TOOLTIPS_INFO ;
typedef int LRESULT ;
typedef int DWORD ;






 int WARN (char*,int) ;

__attribute__((used)) static LRESULT
TOOLTIPS_GetDelayTime (const TOOLTIPS_INFO *infoPtr, DWORD duration)
{
    switch (duration) {
    case 128:
        return infoPtr->nReshowTime;

    case 130:
        return infoPtr->nAutoPopTime;

    case 129:
    case 131:
        return infoPtr->nInitialTime;

    default:
        WARN("Invalid duration flag %x\n", duration);
 break;
    }

    return -1;
}
