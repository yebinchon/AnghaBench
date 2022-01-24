#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {size_t NumSettings; TYPE_2__* pSettings; } ;
struct TYPE_5__ {int /*<<< orphan*/  s; } ;
struct TYPE_6__ {int Type; TYPE_1__ Value; int /*<<< orphan*/  Key; } ;
typedef  TYPE_3__* PRDPSETTINGS ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  size_t INT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

BOOL
FUNC2(PRDPSETTINGS pRdpSettings,
                    LPWSTR lpKey,
                    LPWSTR lpValue)
{
    BOOL bRet = FALSE;

    if (pRdpSettings)
    {
        INT i;

        for (i = 0; i < pRdpSettings->NumSettings; i++)
        {
            if (FUNC0(pRdpSettings->pSettings[i].Key, lpKey) == 0)
            {
                if (pRdpSettings->pSettings[i].Type == 0)
                    pRdpSettings->pSettings[i].Type = L's';

                FUNC1(pRdpSettings->pSettings[i].Value.s, lpValue);
                bRet = TRUE;
                break;
            }
        }
    }

    return bRet;
}