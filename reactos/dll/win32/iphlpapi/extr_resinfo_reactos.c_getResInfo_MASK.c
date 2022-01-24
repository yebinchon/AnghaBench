#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int NumServers; int /*<<< orphan*/ * pCurrent; } ;
struct TYPE_6__ {int riCount; int /*<<< orphan*/ * DnsList; } ;
typedef  TYPE_1__* PIPHLP_RES_INFO ;
typedef  TYPE_2__ NAME_SERVER_LIST_PRIVATE ;
typedef  scalar_t__ LSTATUS ;
typedef  int /*<<< orphan*/  IP_ADDR_STRING ;
typedef  int /*<<< orphan*/  IPHLP_RES_INFO ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

PIPHLP_RES_INFO
FUNC5()
{
    NAME_SERVER_LIST_PRIVATE PrivateNSEnum;
    PIPHLP_RES_INFO ResInfo;
    IP_ADDR_STRING * DnsList = NULL;
    LSTATUS Status;

    PrivateNSEnum.NumServers = 0;

    /* count name servers */
    Status = FUNC0(&PrivateNSEnum);

    if (Status != ERROR_SUCCESS)
    {
        /* failed to enumerate name servers */
        return NULL;
    }

    /* are there any servers */
    if (PrivateNSEnum.NumServers)
    {
        /* allocate dns servers */
        DnsList = FUNC2(FUNC1(), HEAP_ZERO_MEMORY, PrivateNSEnum.NumServers * sizeof(IP_ADDR_STRING));

        if (!DnsList)
        {
            /* no memory */
            return NULL;
        }
    }

    /* allocate private struct */
    ResInfo = (PIPHLP_RES_INFO)FUNC2(FUNC1(), HEAP_ZERO_MEMORY, sizeof(IPHLP_RES_INFO));

    if(!ResInfo)
    {
        /* no memory */
        if (DnsList)
        {
            /* free dns list */
            FUNC3( FUNC1(), 0, DnsList);
        }
        return NULL;
    }

    /* are there any servers */
    if (PrivateNSEnum.NumServers)
    {
        /* initialize enumeration context */
        PrivateNSEnum.NumServers = 0;
        PrivateNSEnum.pCurrent = DnsList;

        /* enumerate servers */
        FUNC4( &PrivateNSEnum );

        /* store result */
        ResInfo->DnsList = DnsList;
        ResInfo->riCount = PrivateNSEnum.NumServers;
    }

    /* done */
    return ResInfo;
}