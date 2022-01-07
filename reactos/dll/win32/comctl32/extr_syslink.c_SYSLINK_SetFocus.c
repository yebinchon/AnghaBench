
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int HasFocus; } ;
typedef TYPE_1__ SYSLINK_INFO ;
typedef int * PDOC_ITEM ;
typedef int LRESULT ;


 int * SYSLINK_GetNextLink (TYPE_1__*,int *) ;
 int SYSLINK_RepaintLink (TYPE_1__*,int *) ;
 int SYSLINK_SetFocusLink (TYPE_1__*,int *) ;
 int TRUE ;

__attribute__((used)) static LRESULT SYSLINK_SetFocus (SYSLINK_INFO *infoPtr)
{
    PDOC_ITEM Focus;

    infoPtr->HasFocus = TRUE;



    Focus = SYSLINK_GetNextLink(infoPtr, ((void*)0));
    if(Focus != ((void*)0))
    {
        SYSLINK_SetFocusLink(infoPtr, Focus);
        SYSLINK_RepaintLink(infoPtr, Focus);
    }
    return 0;
}
