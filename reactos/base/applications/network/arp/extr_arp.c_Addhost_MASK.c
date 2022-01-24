#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONG ;
struct TYPE_10__ {int dwPhysAddrLen; int /*<<< orphan*/  dwType; int /*<<< orphan*/  dwAddr; scalar_t__* bPhysAddr; TYPE_1__* table; int /*<<< orphan*/  dwIndex; } ;
struct TYPE_9__ {int /*<<< orphan*/  dwIndex; } ;
typedef  scalar_t__* PTCHAR ;
typedef  TYPE_2__* PMIB_IPNETTABLE ;
typedef  TYPE_2__* PMIB_IPNETROW ;
typedef  TYPE_2__ MIB_IPNETROW ;
typedef  int INT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  scalar_t__ BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ EOF ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 scalar_t__ FUNC1 (TYPE_2__*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  INADDR_NONE ; 
 int /*<<< orphan*/  MIB_IPNET_TYPE_STATIC ; 
 scalar_t__ NO_ERROR ; 
 scalar_t__ SEPARATOR ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__*,char*,int /*<<< orphan*/ *) ; 
 int FUNC14 (scalar_t__*) ; 
 int FUNC15 (scalar_t__) ; 

INT FUNC16(PTCHAR pszInetAddr, PTCHAR pszEthAddr, PTCHAR pszIfAddr)
{
    PMIB_IPNETROW pAddHost = NULL;
    PMIB_IPNETTABLE pIpNetTable = NULL;
    DWORD dwIpAddr = 0;
    ULONG Size = 0;
    INT i, val, c;

    /* error checking */

    /* check IP address */
    if (pszInetAddr != NULL)
    {
        if ((dwIpAddr = FUNC10(pszInetAddr)) == INADDR_NONE)
        {
            FUNC9(FUNC8("ARP: bad IP address: %s\n"), pszInetAddr);
            return EXIT_FAILURE;
        }
    }
    else
    {
        FUNC6();
        return EXIT_FAILURE;
    }

    /* check MAC address */
    if (FUNC14(pszEthAddr) != 17)
    {
        FUNC9(FUNC8("ARP: bad argument: %s\n"), pszEthAddr);
        return EXIT_FAILURE;
    }
    for (i=0; i<17; i++)
    {
        if (pszEthAddr[i] == SEPARATOR)
            continue;

        if (!FUNC12(pszEthAddr[i]))
        {
            FUNC9(FUNC8("ARP: bad argument: %s\n"), pszEthAddr);
            return EXIT_FAILURE;
        }
    }

    /* We need the IpNetTable to get the adapter index */
    /* Return required buffer size */
    FUNC1(pIpNetTable, &Size, 0);

    /* allocate memory for ARP address table */
    pIpNetTable = (PMIB_IPNETTABLE) FUNC3(FUNC2(), 0, Size);
    if (pIpNetTable == NULL)
        goto cleanup;

    FUNC7(pIpNetTable, sizeof(*pIpNetTable));

    if (FUNC1(pIpNetTable, &Size, TRUE) != NO_ERROR)
    {
        FUNC9(FUNC8("failed to allocate memory for GetIpNetTable\n"));
        FUNC0();
        goto cleanup;
    }


    /* reserve memory on heap and zero */
    pAddHost = (MIB_IPNETROW *) FUNC3(FUNC2(), 0, sizeof(MIB_IPNETROW));
    if (pAddHost == NULL)
        goto cleanup;

    FUNC7(pAddHost, sizeof(MIB_IPNETROW));

    /* set dwIndex field to the index of a local IP address to
     * indicate the network on which the ARP entry applies */
    if (pszIfAddr)
    {
        if (FUNC13(pszIfAddr, "%lx", &pAddHost->dwIndex) == EOF)
        {
            goto cleanup;
        }
    }
    else
    {
        //printf("debug print: pIpNetTable->table[0].dwIndex = %lx\n", pIpNetTable->table[0].dwIndex);
        /* needs testing. I get the correct index on my machine, but need others
         * to test their card index.  Any problems and we can use GetAdaptersInfo instead */
        pAddHost->dwIndex = pIpNetTable->table[0].dwIndex;
    }

    /* Set MAC address to 6 bytes (typical) */
    pAddHost->dwPhysAddrLen = 6;


    /* Encode bPhysAddr into correct byte array */
    for (i=0; i<6; i++)
    {
        val =0;
        c = FUNC15(pszEthAddr[i*3]);
        c = c - (FUNC11(c) ? '0' : ('A' - 10));
        val += c;
        val = (val << 4);
        c = FUNC15(pszEthAddr[i*3 + 1]);
        c = c - (FUNC11(c) ? '0' : ('A' - 10));
        val += c;
        pAddHost->bPhysAddr[i] = (BYTE)val;
    }


    /* copy converted IP address */
    pAddHost->dwAddr = dwIpAddr;


    /* set type to static */
    pAddHost->dwType = MIB_IPNET_TYPE_STATIC;


    /* Add the ARP entry */
    if (FUNC5(pAddHost) != NO_ERROR)
    {
        FUNC0();
        goto cleanup;
    }

    FUNC4(FUNC2(), 0, pAddHost);

    return EXIT_SUCCESS;

cleanup:
    if (pIpNetTable != NULL)
        FUNC4(FUNC2(), 0, pIpNetTable);
    if (pAddHost != NULL)
        FUNC4(FUNC2(), 0, pAddHost);
    return EXIT_FAILURE;
}