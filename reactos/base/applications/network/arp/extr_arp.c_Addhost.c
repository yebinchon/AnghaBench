
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_10__ {int dwPhysAddrLen; int dwType; int dwAddr; scalar_t__* bPhysAddr; TYPE_1__* table; int dwIndex; } ;
struct TYPE_9__ {int dwIndex; } ;
typedef scalar_t__* PTCHAR ;
typedef TYPE_2__* PMIB_IPNETTABLE ;
typedef TYPE_2__* PMIB_IPNETROW ;
typedef TYPE_2__ MIB_IPNETROW ;
typedef int INT ;
typedef int DWORD ;
typedef scalar_t__ BYTE ;


 int DoFormatMessage () ;
 scalar_t__ EOF ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 scalar_t__ GetIpNetTable (TYPE_2__*,int*,int ) ;
 int GetProcessHeap () ;
 scalar_t__ HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 int INADDR_NONE ;
 int MIB_IPNET_TYPE_STATIC ;
 scalar_t__ NO_ERROR ;
 scalar_t__ SEPARATOR ;
 scalar_t__ SetIpNetEntry (TYPE_2__*) ;
 int TRUE ;
 int Usage () ;
 int ZeroMemory (TYPE_2__*,int) ;
 int _T (char*) ;
 int _tprintf (int ,...) ;
 int inet_addr (scalar_t__*) ;
 scalar_t__ isdigit (int) ;
 int isxdigit (scalar_t__) ;
 scalar_t__ sscanf (scalar_t__*,char*,int *) ;
 int strlen (scalar_t__*) ;
 int toupper (scalar_t__) ;

INT Addhost(PTCHAR pszInetAddr, PTCHAR pszEthAddr, PTCHAR pszIfAddr)
{
    PMIB_IPNETROW pAddHost = ((void*)0);
    PMIB_IPNETTABLE pIpNetTable = ((void*)0);
    DWORD dwIpAddr = 0;
    ULONG Size = 0;
    INT i, val, c;




    if (pszInetAddr != ((void*)0))
    {
        if ((dwIpAddr = inet_addr(pszInetAddr)) == INADDR_NONE)
        {
            _tprintf(_T("ARP: bad IP address: %s\n"), pszInetAddr);
            return EXIT_FAILURE;
        }
    }
    else
    {
        Usage();
        return EXIT_FAILURE;
    }


    if (strlen(pszEthAddr) != 17)
    {
        _tprintf(_T("ARP: bad argument: %s\n"), pszEthAddr);
        return EXIT_FAILURE;
    }
    for (i=0; i<17; i++)
    {
        if (pszEthAddr[i] == SEPARATOR)
            continue;

        if (!isxdigit(pszEthAddr[i]))
        {
            _tprintf(_T("ARP: bad argument: %s\n"), pszEthAddr);
            return EXIT_FAILURE;
        }
    }



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



    pAddHost = (MIB_IPNETROW *) HeapAlloc(GetProcessHeap(), 0, sizeof(MIB_IPNETROW));
    if (pAddHost == ((void*)0))
        goto cleanup;

    ZeroMemory(pAddHost, sizeof(MIB_IPNETROW));



    if (pszIfAddr)
    {
        if (sscanf(pszIfAddr, "%lx", &pAddHost->dwIndex) == EOF)
        {
            goto cleanup;
        }
    }
    else
    {



        pAddHost->dwIndex = pIpNetTable->table[0].dwIndex;
    }


    pAddHost->dwPhysAddrLen = 6;



    for (i=0; i<6; i++)
    {
        val =0;
        c = toupper(pszEthAddr[i*3]);
        c = c - (isdigit(c) ? '0' : ('A' - 10));
        val += c;
        val = (val << 4);
        c = toupper(pszEthAddr[i*3 + 1]);
        c = c - (isdigit(c) ? '0' : ('A' - 10));
        val += c;
        pAddHost->bPhysAddr[i] = (BYTE)val;
    }



    pAddHost->dwAddr = dwIpAddr;



    pAddHost->dwType = MIB_IPNET_TYPE_STATIC;



    if (SetIpNetEntry(pAddHost) != NO_ERROR)
    {
        DoFormatMessage();
        goto cleanup;
    }

    HeapFree(GetProcessHeap(), 0, pAddHost);

    return EXIT_SUCCESS;

cleanup:
    if (pIpNetTable != ((void*)0))
        HeapFree(GetProcessHeap(), 0, pIpNetTable);
    if (pAddHost != ((void*)0))
        HeapFree(GetProcessHeap(), 0, pAddHost);
    return EXIT_FAILURE;
}
