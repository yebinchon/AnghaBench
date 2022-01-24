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
struct TYPE_10__ {int /*<<< orphan*/  dwAddr; int /*<<< orphan*/  dwIndex; TYPE_1__* table; } ;
struct TYPE_9__ {int /*<<< orphan*/  dwIndex; } ;
typedef  int /*<<< orphan*/ * PTCHAR ;
typedef  TYPE_2__* PMIB_IPNETTABLE ;
typedef  TYPE_2__* PMIB_IPNETROW ;
typedef  TYPE_2__ MIB_IPNETROW ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ EOF ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  INADDR_NONE ; 
 scalar_t__ NO_ERROR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,char*,int) ; 

INT FUNC15(PTCHAR pszInetAddr, PTCHAR pszIfAddr)
{
    PMIB_IPNETROW pDelHost = NULL;
    PMIB_IPNETTABLE pIpNetTable = NULL;
    ULONG Size = 0;
    DWORD dwIpAddr = 0;
    BOOL bFlushTable = FALSE;

    /* error checking */

    /* check IP address */
    if (pszInetAddr != NULL)
    {
        /* if wildcard is given, set flag to delete all hosts */
        if (FUNC14(pszInetAddr, "*", 1) == 0)
            bFlushTable = TRUE;
        else if ((dwIpAddr = FUNC12(pszInetAddr)) == INADDR_NONE)
        {
            FUNC10(FUNC9("ARP: bad IP address: %s\n"), pszInetAddr);
            FUNC11(EXIT_FAILURE);
        }
    }
    else
    {
        FUNC7();
        FUNC11(EXIT_FAILURE);
    }

    /* We need the IpNetTable to get the adapter index */
    /* Return required buffer size */
    FUNC3(NULL, &Size, 0);

    /* allocate memory for ARP address table */
    pIpNetTable = (PMIB_IPNETTABLE) FUNC5(FUNC4(), 0, Size);
    if (pIpNetTable == NULL)
        goto cleanup;

    FUNC8(pIpNetTable, sizeof(*pIpNetTable));

    if (FUNC3(pIpNetTable, &Size, TRUE) != NO_ERROR)
    {
        FUNC10(FUNC9("failed to allocate memory for GetIpNetTable\n"));
        FUNC1();
        goto cleanup;
    }

    /* reserve memory on heap and zero */
    pDelHost = (MIB_IPNETROW *) FUNC5(FUNC4(), 0, sizeof(MIB_IPNETROW));
    if (pDelHost == NULL)
        goto cleanup;

    FUNC8(pDelHost, sizeof(MIB_IPNETROW));


    /* set dwIndex field to the index of a local IP address to
     * indicate the network on which the ARP entry applies */
    if (pszIfAddr)
    {
        if (FUNC13(pszIfAddr, "%lx", &pDelHost->dwIndex) == EOF)
        {
            goto cleanup;
        }
    }
    else
    {
        /* needs testing. I get the correct index on my machine, but need others
         * to test their card index. Any problems and we can use GetAdaptersInfo instead */
        pDelHost->dwIndex = pIpNetTable->table[0].dwIndex;
    }

    if (bFlushTable != FALSE)
    {
        /* delete arp cache */
        if (FUNC2(pDelHost->dwIndex) != NO_ERROR)
        {
            FUNC1();
            goto cleanup;
        }
        else
        {
            FUNC6(FUNC4(), 0, pDelHost);
            return EXIT_SUCCESS;
        }
    }
    else
        /* copy converted IP address */
        pDelHost->dwAddr = dwIpAddr;

    /* Add the ARP entry */
    if (FUNC0(pDelHost) != NO_ERROR)
    {
        FUNC1();
        goto cleanup;
    }

    FUNC6(FUNC4(), 0, pDelHost);

    return EXIT_SUCCESS;

cleanup:
    if (pIpNetTable != NULL)
        FUNC6(FUNC4(), 0, pIpNetTable);
    if (pDelHost != NULL)
        FUNC6(FUNC4(), 0, pDelHost);
    return EXIT_FAILURE;
}