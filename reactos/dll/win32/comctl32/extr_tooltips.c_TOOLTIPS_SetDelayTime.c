
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nReshowTime; int nAutoPopTime; int nInitialTime; } ;
typedef TYPE_1__ TOOLTIPS_INFO ;
typedef int LRESULT ;
typedef int INT ;
typedef int DWORD ;


 int GetDoubleClickTime () ;




 int WARN (char*,int) ;

__attribute__((used)) static LRESULT
TOOLTIPS_SetDelayTime (TOOLTIPS_INFO *infoPtr, DWORD duration, INT nTime)
{
    switch (duration) {
    case 131:
        if (nTime <= 0)
     nTime = GetDoubleClickTime();
 infoPtr->nReshowTime = nTime / 5;
 infoPtr->nAutoPopTime = nTime * 10;
 infoPtr->nInitialTime = nTime;
 break;

    case 128:
        if(nTime < 0)
     nTime = GetDoubleClickTime() / 5;
 infoPtr->nReshowTime = nTime;
 break;

    case 130:
        if(nTime < 0)
     nTime = GetDoubleClickTime() * 10;
 infoPtr->nAutoPopTime = nTime;
 break;

    case 129:
        if(nTime < 0)
     nTime = GetDoubleClickTime();
 infoPtr->nInitialTime = nTime;
     break;

    default:
        WARN("Invalid duration flag %x\n", duration);
 break;
    }

    return 0;
}
