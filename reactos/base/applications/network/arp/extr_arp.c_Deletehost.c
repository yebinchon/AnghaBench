
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_10__ {int dwAddr; int dwIndex; TYPE_1__* table; } ;
struct TYPE_9__ {int dwIndex; } ;
typedef int * PTCHAR ;
typedef TYPE_2__* PMIB_IPNETTABLE ;
typedef TYPE_2__* PMIB_IPNETROW ;
typedef TYPE_2__ MIB_IPNETROW ;
typedef int INT ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ DeleteIpNetEntry (TYPE_2__*) ;
 int DoFormatMessage () ;
 scalar_t__ EOF ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 scalar_t__ FALSE ;
 scalar_t__ FlushIpNetTable (int ) ;
 scalar_t__ GetIpNetTable (TYPE_2__*,int*,scalar_t__) ;
 int GetProcessHeap () ;
 scalar_t__ HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 int INADDR_NONE ;
 scalar_t__ NO_ERROR ;
 scalar_t__ TRUE ;
 int Usage () ;
 int ZeroMemory (TYPE_2__*,int) ;
 int _T (char*) ;
 int _tprintf (int ,...) ;
 int exit (int ) ;
 int inet_addr (int *) ;
 scalar_t__ sscanf (int *,char*,int *) ;
 scalar_t__ strncmp (int *,char*,int) ;

INT Deletehost(PTCHAR pszInetAddr, PTCHAR pszIfAddr)
{
    PMIB_IPNETROW pDelHost = ((void*)0);
    PMIB_IPNETTABLE pIpNetTable = ((void*)0);
    ULONG Size = 0;
    DWORD dwIpAddr = 0;
    BOOL bFlushTable = FALSE;




    if (pszInetAddr != ((void*)0))
    {

        if (strncmp(pszInetAddr, "*", 1) == 0)
            bFlushTable = TRUE;
        else if ((dwIpAddr = inet_addr(pszInetAddr)) == INADDR_NONE)
        {
            _tprintf(_T("ARP: bad IP address: %s\n"), pszInetAddr);
            exit(EXIT_FAILURE);
        }
    }
    else
    {
        Usage();
        exit(EXIT_FAILURE);
    }



    GetIpNetTable(((void*)0), &Size, 0);


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


    pDelHost = (MIB_IPNETROW *) HeapAlloc(GetProcessHeap(), 0, sizeof(MIB_IPNETROW));
    if (pDelHost == ((void*)0))
        goto cleanup;

    ZeroMemory(pDelHost, sizeof(MIB_IPNETROW));




    if (pszIfAddr)
    {
        if (sscanf(pszIfAddr, "%lx", &pDelHost->dwIndex) == EOF)
        {
            goto cleanup;
        }
    }
    else
    {


        pDelHost->dwIndex = pIpNetTable->table[0].dwIndex;
    }

    if (bFlushTable != FALSE)
    {

        if (FlushIpNetTable(pDelHost->dwIndex) != NO_ERROR)
        {
            DoFormatMessage();
            goto cleanup;
        }
        else
        {
            HeapFree(GetProcessHeap(), 0, pDelHost);
            return EXIT_SUCCESS;
        }
    }
    else

        pDelHost->dwAddr = dwIpAddr;


    if (DeleteIpNetEntry(pDelHost) != NO_ERROR)
    {
        DoFormatMessage();
        goto cleanup;
    }

    HeapFree(GetProcessHeap(), 0, pDelHost);

    return EXIT_SUCCESS;

cleanup:
    if (pIpNetTable != ((void*)0))
        HeapFree(GetProcessHeap(), 0, pIpNetTable);
    if (pDelHost != ((void*)0))
        HeapFree(GetProcessHeap(), 0, pDelHost);
    return EXIT_FAILURE;
}
