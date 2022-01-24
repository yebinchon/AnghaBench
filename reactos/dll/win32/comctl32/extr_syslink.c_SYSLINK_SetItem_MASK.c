#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int UINT ;
struct TYPE_12__ {int mask; int stateMask; int state; int /*<<< orphan*/  szUrl; int /*<<< orphan*/  szID; int /*<<< orphan*/  iLink; } ;
struct TYPE_9__ {void* szID; void* szUrl; int state; } ;
struct TYPE_10__ {TYPE_1__ Link; } ;
struct TYPE_11__ {TYPE_2__ u; } ;
typedef  int /*<<< orphan*/  SYSLINK_INFO ;
typedef  void* PWSTR ;
typedef  TYPE_3__* PDOC_ITEM ;
typedef  int LRESULT ;
typedef  TYPE_4__ LITEM ;
typedef  int BOOL ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int LIF_FLAGSMASK ; 
 int LIF_ITEMID ; 
 int LIF_ITEMINDEX ; 
 int LIF_STATE ; 
 int LIF_URL ; 
 int LIS_FOCUSED ; 
 int LIS_MASK ; 
 scalar_t__ L_MAX_URL_LENGTH ; 
 scalar_t__ MAX_LINKID_TEXT ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,TYPE_3__*) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static LRESULT FUNC9 (const SYSLINK_INFO *infoPtr, const LITEM *Item)
{
    PDOC_ITEM di;
    int nc;
    PWSTR szId = NULL;
    PWSTR szUrl = NULL;
    BOOL Repaint = FALSE;

    if(!(Item->mask & LIF_ITEMINDEX) || !(Item->mask & (LIF_FLAGSMASK)))
    {
        FUNC1("Invalid Flags!\n");
        return FALSE;
    }

    di = FUNC3(infoPtr, Item->iLink);
    if(di == NULL)
    {
        FUNC1("Link %d couldn't be found\n", Item->iLink);
        return FALSE;
    }

    if(Item->mask & LIF_ITEMID)
    {
        nc = FUNC8(FUNC7(Item->szID), MAX_LINKID_TEXT - 1);
        szId = FUNC0((nc + 1) * sizeof(WCHAR));
        if(szId)
        {
            FUNC6(szId, Item->szID, nc + 1);
        }
        else
        {
            FUNC1("Unable to allocate memory for link id\n");
            return FALSE;
        }
    }

    if(Item->mask & LIF_URL)
    {
        nc = FUNC8(FUNC7(Item->szUrl), L_MAX_URL_LENGTH - 1);
        szUrl = FUNC0((nc + 1) * sizeof(WCHAR));
        if(szUrl)
        {
            FUNC6(szUrl, Item->szUrl, nc + 1);
        }
        else
        {
            FUNC2(szId);

            FUNC1("Unable to allocate memory for link url\n");
            return FALSE;
        }
    }

    if(Item->mask & LIF_ITEMID)
    {
        FUNC2(di->u.Link.szID);
        di->u.Link.szID = szId;
    }

    if(Item->mask & LIF_URL)
    {
        FUNC2(di->u.Link.szUrl);
        di->u.Link.szUrl = szUrl;
    }

    if(Item->mask & LIF_STATE)
    {
        UINT oldstate = di->u.Link.state;
        /* clear the masked bits */
        di->u.Link.state &= ~(Item->stateMask & LIS_MASK);
        /* copy the bits */
        di->u.Link.state |= (Item->state & Item->stateMask) & LIS_MASK;
        Repaint = (oldstate != di->u.Link.state);
        
        /* update the focus */
        FUNC5(infoPtr, ((di->u.Link.state & LIS_FOCUSED) ? di : NULL));
    }
    
    if(Repaint)
    {
        FUNC4(infoPtr, di);
    }
    
    return TRUE;
}