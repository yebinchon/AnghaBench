
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int state; scalar_t__ szUrl; scalar_t__ szID; } ;
struct TYPE_11__ {TYPE_1__ Link; } ;
struct TYPE_14__ {TYPE_2__ u; } ;
struct TYPE_13__ {int mask; int state; int stateMask; scalar_t__* szUrl; scalar_t__* szID; int iLink; } ;
struct TYPE_12__ {int HasFocus; } ;
typedef TYPE_3__ SYSLINK_INFO ;
typedef TYPE_4__* PLITEM ;
typedef TYPE_5__* PDOC_ITEM ;
typedef int LRESULT ;


 int ERR (char*,...) ;
 int FALSE ;
 int LIF_FLAGSMASK ;
 int LIF_ITEMID ;
 int LIF_ITEMINDEX ;
 int LIF_STATE ;
 int LIF_URL ;
 int LIS_FOCUSED ;
 TYPE_5__* SYSLINK_GetLinkItemByIndex (TYPE_3__ const*,int ) ;
 int TRUE ;
 int lstrcpyW (scalar_t__*,scalar_t__) ;

__attribute__((used)) static LRESULT SYSLINK_GetItem (const SYSLINK_INFO *infoPtr, PLITEM Item)
{
    PDOC_ITEM di;

    if(!(Item->mask & LIF_ITEMINDEX) || !(Item->mask & (LIF_FLAGSMASK)))
    {
        ERR("Invalid Flags!\n");
        return FALSE;
    }

    di = SYSLINK_GetLinkItemByIndex(infoPtr, Item->iLink);
    if(di == ((void*)0))
    {
        ERR("Link %d couldn't be found\n", Item->iLink);
        return FALSE;
    }

    if(Item->mask & LIF_STATE)
    {
        Item->state = (di->u.Link.state & Item->stateMask);
        if(!infoPtr->HasFocus)
        {

            Item->state &= ~LIS_FOCUSED;
        }
    }

    if(Item->mask & LIF_ITEMID)
    {
        if(di->u.Link.szID)
        {
            lstrcpyW(Item->szID, di->u.Link.szID);
        }
        else
        {
            Item->szID[0] = 0;
        }
    }

    if(Item->mask & LIF_URL)
    {
        if(di->u.Link.szUrl)
        {
            lstrcpyW(Item->szUrl, di->u.Link.szUrl);
        }
        else
        {
            Item->szUrl[0] = 0;
        }
    }

    return TRUE;
}
