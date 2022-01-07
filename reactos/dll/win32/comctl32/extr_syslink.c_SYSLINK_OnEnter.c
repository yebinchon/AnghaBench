
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int IgnoreReturn; scalar_t__ HasFocus; } ;
typedef TYPE_1__ SYSLINK_INFO ;
typedef scalar_t__ PDOC_ITEM ;
typedef int BOOL ;


 int FALSE ;
 int NM_RETURN ;
 scalar_t__ SYSLINK_GetFocusLink (TYPE_1__ const*,int*) ;
 int SYSLINK_SendParentNotify (TYPE_1__ const*,int ,scalar_t__,int) ;
 int TRUE ;

__attribute__((used)) static BOOL SYSLINK_OnEnter (const SYSLINK_INFO *infoPtr)
{
    if(infoPtr->HasFocus && !infoPtr->IgnoreReturn)
    {
        PDOC_ITEM Focus;
        int id;

        Focus = SYSLINK_GetFocusLink(infoPtr, &id);
        if(Focus)
        {
            SYSLINK_SendParentNotify(infoPtr, NM_RETURN, Focus, id);
            return TRUE;
        }
    }
    return FALSE;
}
