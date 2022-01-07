
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nCurrentTool; int bActive; } ;
typedef TYPE_1__ TOOLTIPS_INFO ;
typedef int LRESULT ;
typedef int BOOL ;


 int TOOLTIPS_Hide (TYPE_1__*) ;
 int TRACE (char*,int ) ;

__attribute__((used)) static LRESULT
TOOLTIPS_Activate (TOOLTIPS_INFO *infoPtr, BOOL activate)
{
    infoPtr->bActive = activate;

    TRACE("activate %d\n", activate);

    if (!(infoPtr->bActive) && (infoPtr->nCurrentTool != -1))
 TOOLTIPS_Hide (infoPtr);

    return 0;
}
