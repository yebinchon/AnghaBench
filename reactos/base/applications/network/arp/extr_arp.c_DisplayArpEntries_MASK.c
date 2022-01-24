#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  S_addr; } ;
struct in_addr {TYPE_1__ S_un; int /*<<< orphan*/  s_addr; } ;
typedef  scalar_t__ ULONG ;
typedef  size_t UINT ;
struct TYPE_12__ {scalar_t__ dwIndex; int /*<<< orphan*/  dwAddr; } ;
struct TYPE_11__ {scalar_t__ dwNumEntries; TYPE_6__* table; } ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int /*<<< orphan*/  PTCHAR ;
typedef  TYPE_2__* PMIB_IPNETTABLE ;
typedef  TYPE_2__* PMIB_IPADDRTABLE ;
typedef  TYPE_2__ MIB_IPADDRTABLE ;
typedef  int /*<<< orphan*/  INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  NO_ERROR ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC10 (struct in_addr) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

INT FUNC13(PTCHAR pszInetAddr, PTCHAR pszIfAddr)
{
    INT iRet;
    UINT i, k;
    PMIB_IPNETTABLE pIpNetTable = NULL;
    PMIB_IPADDRTABLE pIpAddrTable = NULL;
    ULONG Size = 0;
    struct in_addr inaddr, inaddr2;
    PTCHAR pszIpAddr;
    TCHAR szIntIpAddr[20];

    /* retrieve the IP-to-physical address mapping table */

    /* get table size */
    FUNC2(pIpNetTable, &Size, 0);

    /* allocate memory for ARP address table */
    pIpNetTable = (PMIB_IPNETTABLE) FUNC4(FUNC3(), 0, Size);
    if (pIpNetTable == NULL)
        goto cleanup;

    FUNC7(pIpNetTable, sizeof(*pIpNetTable));

    if (FUNC2(pIpNetTable, &Size, TRUE) != NO_ERROR)
    {
        FUNC9(FUNC8("failed to allocate memory for GetIpNetTable\n"));
        FUNC0();
        goto cleanup;
    }

    /* check there are entries in the table */
    if (pIpNetTable->dwNumEntries == 0)
    {
        FUNC9(FUNC8("No ARP entires found\n"));
        goto cleanup;
    }



    /* Retrieve the interface-to-ip address mapping
     * table to get the IP address for adapter */

    /* get table size */
    Size = 0;
    FUNC1(pIpAddrTable, &Size, 0);

    pIpAddrTable = (MIB_IPADDRTABLE *) FUNC4(FUNC3(), 0, Size);
    if (pIpAddrTable == NULL)
        goto cleanup;

    FUNC7(pIpAddrTable, sizeof(*pIpAddrTable));

    if ((iRet = FUNC1(pIpAddrTable, &Size, TRUE)) != NO_ERROR)
    {
        FUNC9(FUNC8("GetIpAddrTable failed: %d\n"), iRet);
        FUNC0();
        goto cleanup;
    }


    for (k=0; k < pIpAddrTable->dwNumEntries; k++)
    {
        if (pIpNetTable->table[0].dwIndex == pIpAddrTable->table[k].dwIndex)
        {
            //printf("debug print: pIpAddrTable->table[?].dwIndex = %lx\n", pIpNetTable->table[k].dwIndex);
            inaddr2.s_addr = pIpAddrTable->table[k].dwAddr;
            pszIpAddr = FUNC10(inaddr2);
            FUNC12(szIntIpAddr, pszIpAddr);
        }
    }


    /* print header, including interface IP address and index number */
    FUNC9(FUNC8("\nInterface: %s --- 0x%lx \n"), szIntIpAddr, pIpNetTable->table[0].dwIndex);
    FUNC9(FUNC8("  Internet Address      Physical Address      Type\n"));

    /* go through all ARP entries */
    for (i=0; i < pIpNetTable->dwNumEntries; i++)
    {

        /* if the user has supplied their own internet address *
         * only print the arp entry which matches that */
        if (pszInetAddr)
        {
            inaddr.S_un.S_addr = pIpNetTable->table[i].dwAddr;
            pszIpAddr = FUNC10(inaddr);

            /* check if it matches, print it */
            if (FUNC11(pszIpAddr, pszInetAddr) == 0)
                FUNC6(&pIpNetTable->table[i]);
        }
        else
            /* if an address is not supplied, print all entries */
            FUNC6(&pIpNetTable->table[i]);
    }

    return EXIT_SUCCESS;

cleanup:
    if (pIpNetTable != NULL)
        FUNC5(FUNC3(), 0, pIpNetTable);
    if (pIpAddrTable != NULL)
        FUNC5(FUNC3(), 0, pIpAddrTable);
    return EXIT_FAILURE;
}