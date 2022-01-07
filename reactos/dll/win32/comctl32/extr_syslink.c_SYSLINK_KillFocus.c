
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int HasFocus; } ;
typedef TYPE_1__ SYSLINK_INFO ;
typedef int * PDOC_ITEM ;
typedef int LRESULT ;


 int FALSE ;
 int * SYSLINK_GetFocusLink (TYPE_1__*,int *) ;
 int SYSLINK_RepaintLink (TYPE_1__*,int *) ;

__attribute__((used)) static LRESULT SYSLINK_KillFocus (SYSLINK_INFO *infoPtr)
{
    PDOC_ITEM Focus;

    infoPtr->HasFocus = FALSE;
    Focus = SYSLINK_GetFocusLink(infoPtr, ((void*)0));

    if(Focus != ((void*)0))
    {
        SYSLINK_RepaintLink(infoPtr, Focus);
    }

    return 0;
}
