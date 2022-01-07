
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ HasFocus; } ;
typedef TYPE_1__ SYSLINK_INFO ;
typedef int * PDOC_ITEM ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int * SYSLINK_GetFocusLink (TYPE_1__ const*,int*) ;
 int * SYSLINK_GetNextLink (TYPE_1__ const*,int *) ;
 int * SYSLINK_GetPrevLink (TYPE_1__ const*,int *) ;
 int SYSLINK_RepaintLink (TYPE_1__ const*,int *) ;
 int * SYSLINK_SetFocusLink (TYPE_1__ const*,int *) ;
 scalar_t__ TRUE ;

__attribute__((used)) static BOOL SYSKEY_SelectNextPrevLink (const SYSLINK_INFO *infoPtr, BOOL Prev)
{
    if(infoPtr->HasFocus)
    {
        PDOC_ITEM Focus;
        int id;

        Focus = SYSLINK_GetFocusLink(infoPtr, &id);
        if(Focus != ((void*)0))
        {
            PDOC_ITEM NewFocus, OldFocus;

            if(Prev)
                NewFocus = SYSLINK_GetPrevLink(infoPtr, Focus);
            else
                NewFocus = SYSLINK_GetNextLink(infoPtr, Focus);

            if(NewFocus != ((void*)0))
            {
                OldFocus = SYSLINK_SetFocusLink(infoPtr, NewFocus);

                if(OldFocus && OldFocus != NewFocus)
                {
                    SYSLINK_RepaintLink(infoPtr, OldFocus);
                }
                SYSLINK_RepaintLink(infoPtr, NewFocus);
                return TRUE;
            }
        }
    }
    return FALSE;
}
