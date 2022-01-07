
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int S_addr; } ;
struct in_addr {TYPE_1__ S_un; int s_addr; } ;
typedef scalar_t__ ULONG ;
typedef size_t UINT ;
struct TYPE_12__ {scalar_t__ dwIndex; int dwAddr; } ;
struct TYPE_11__ {scalar_t__ dwNumEntries; TYPE_6__* table; } ;
typedef int TCHAR ;
typedef int PTCHAR ;
typedef TYPE_2__* PMIB_IPNETTABLE ;
typedef TYPE_2__* PMIB_IPADDRTABLE ;
typedef TYPE_2__ MIB_IPADDRTABLE ;
typedef int INT ;


 int DoFormatMessage () ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int GetIpAddrTable (TYPE_2__*,scalar_t__*,int ) ;
 int GetIpNetTable (TYPE_2__*,scalar_t__*,int ) ;
 int GetProcessHeap () ;
 scalar_t__ HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 int NO_ERROR ;
 int PrintEntries (TYPE_6__*) ;
 int TRUE ;
 int ZeroMemory (TYPE_2__*,int) ;
 int _T (char*) ;
 int _tprintf (int ,...) ;
 int inet_ntoa (struct in_addr) ;
 scalar_t__ strcmp (int ,int ) ;
 int strcpy (int *,int ) ;

INT DisplayArpEntries(PTCHAR pszInetAddr, PTCHAR pszIfAddr)
{
    INT iRet;
    UINT i, k;
    PMIB_IPNETTABLE pIpNetTable = ((void*)0);
    PMIB_IPADDRTABLE pIpAddrTable = ((void*)0);
    ULONG Size = 0;
    struct in_addr inaddr, inaddr2;
    PTCHAR pszIpAddr;
    TCHAR szIntIpAddr[20];




    GetIpNetTable(pIpNetTable, &Size, 0);


    pIpNetTable = (PMIB_IPNETTABLE) HeapAlloc(GetProcessHeap(), 0, Size);
    if (pIpNetTable == ((void*)0))
        goto cleanup;

    ZeroMemory(pIpNetTable, sizeof(*pIpNetTable));

    if (GetIpNetTable(pIpNetTable, &Size, TRUE) != NO_ERROR)
    {
        _tprintf(_T("failed to allocate memory for GetIpNetTable\n"));
        DoFormatMessage();
        goto cleanup;
    }


    if (pIpNetTable->dwNumEntries == 0)
    {
        _tprintf(_T("No ARP entires found\n"));
        goto cleanup;
    }







    Size = 0;
    GetIpAddrTable(pIpAddrTable, &Size, 0);

    pIpAddrTable = (MIB_IPADDRTABLE *) HeapAlloc(GetProcessHeap(), 0, Size);
    if (pIpAddrTable == ((void*)0))
        goto cleanup;

    ZeroMemory(pIpAddrTable, sizeof(*pIpAddrTable));

    if ((iRet = GetIpAddrTable(pIpAddrTable, &Size, TRUE)) != NO_ERROR)
    {
        _tprintf(_T("GetIpAddrTable failed: %d\n"), iRet);
        DoFormatMessage();
        goto cleanup;
    }


    for (k=0; k < pIpAddrTable->dwNumEntries; k++)
    {
        if (pIpNetTable->table[0].dwIndex == pIpAddrTable->table[k].dwIndex)
        {

            inaddr2.s_addr = pIpAddrTable->table[k].dwAddr;
            pszIpAddr = inet_ntoa(inaddr2);
            strcpy(szIntIpAddr, pszIpAddr);
        }
    }



    _tprintf(_T("\nInterface: %s --- 0x%lx \n"), szIntIpAddr, pIpNetTable->table[0].dwIndex);
    _tprintf(_T("  Internet Address      Physical Address      Type\n"));


    for (i=0; i < pIpNetTable->dwNumEntries; i++)
    {



        if (pszInetAddr)
        {
            inaddr.S_un.S_addr = pIpNetTable->table[i].dwAddr;
            pszIpAddr = inet_ntoa(inaddr);


            if (strcmp(pszIpAddr, pszInetAddr) == 0)
                PrintEntries(&pIpNetTable->table[i]);
        }
        else

            PrintEntries(&pIpNetTable->table[i]);
    }

    return EXIT_SUCCESS;

cleanup:
    if (pIpNetTable != ((void*)0))
        HeapFree(GetProcessHeap(), 0, pIpNetTable);
    if (pIpAddrTable != ((void*)0))
        HeapFree(GetProcessHeap(), 0, pIpAddrTable);
    return EXIT_FAILURE;
}
