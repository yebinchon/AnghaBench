#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int state; scalar_t__ szUrl; scalar_t__ szID; } ;
struct TYPE_11__ {TYPE_1__ Link; } ;
struct TYPE_14__ {TYPE_2__ u; } ;
struct TYPE_13__ {int mask; int state; int stateMask; scalar_t__* szUrl; scalar_t__* szID; int /*<<< orphan*/  iLink; } ;
struct TYPE_12__ {int /*<<< orphan*/  HasFocus; } ;
typedef  TYPE_3__ SYSLINK_INFO ;
typedef  TYPE_4__* PLITEM ;
typedef  TYPE_5__* PDOC_ITEM ;
typedef  int /*<<< orphan*/  LRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FALSE ; 
 int LIF_FLAGSMASK ; 
 int LIF_ITEMID ; 
 int LIF_ITEMINDEX ; 
 int LIF_STATE ; 
 int LIF_URL ; 
 int LIS_FOCUSED ; 
 TYPE_5__* FUNC1 (TYPE_3__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__) ; 

__attribute__((used)) static LRESULT FUNC3 (const SYSLINK_INFO *infoPtr, PLITEM Item)
{
    PDOC_ITEM di;
    
    if(!(Item->mask & LIF_ITEMINDEX) || !(Item->mask & (LIF_FLAGSMASK)))
    {
        FUNC0("Invalid Flags!\n");
        return FALSE;
    }
    
    di = FUNC1(infoPtr, Item->iLink);
    if(di == NULL)
    {
        FUNC0("Link %d couldn't be found\n", Item->iLink);
        return FALSE;
    }
    
    if(Item->mask & LIF_STATE)
    {
        Item->state = (di->u.Link.state & Item->stateMask);
        if(!infoPtr->HasFocus)
        {
            /* remove the LIS_FOCUSED bit if the control doesn't have focus */
            Item->state &= ~LIS_FOCUSED;
        }
    }
    
    if(Item->mask & LIF_ITEMID)
    {
        if(di->u.Link.szID)
        {
            FUNC2(Item->szID, di->u.Link.szID);
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
            FUNC2(Item->szUrl, di->u.Link.szUrl);
        }
        else
        {
            Item->szUrl[0] = 0;
        }
    }
    
    return TRUE;
}