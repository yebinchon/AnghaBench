
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int S_addr; } ;
struct TYPE_8__ {TYPE_1__ S_un; } ;
struct TYPE_7__ {int dwType; int * bPhysAddr; int dwAddr; } ;
typedef int TCHAR ;
typedef TYPE_2__* PMIB_IPNETROW ;
typedef TYPE_3__ IN_ADDR ;
typedef int INT ;


 int EXIT_SUCCESS ;




 int _T (char*) ;
 int _stprintf (int *,int ,int ,int ,int ,int ,int ,int ) ;
 int _tprintf (int ,...) ;
 int inet_ntoa (TYPE_3__) ;

INT PrintEntries(PMIB_IPNETROW pIpAddRow)
{
    IN_ADDR inaddr;
    TCHAR cMacAddr[20];


    inaddr.S_un.S_addr = pIpAddRow->dwAddr;
    _tprintf(_T("  %-22s"), inet_ntoa(inaddr));


    _stprintf(cMacAddr, _T("%02x-%02x-%02x-%02x-%02x-%02x"),
        pIpAddRow->bPhysAddr[0],
        pIpAddRow->bPhysAddr[1],
        pIpAddRow->bPhysAddr[2],
        pIpAddRow->bPhysAddr[3],
        pIpAddRow->bPhysAddr[4],
        pIpAddRow->bPhysAddr[5]);
    _tprintf(_T("%-22s"), cMacAddr);


    switch (pIpAddRow->dwType)
    {
        case 131 : _tprintf(_T("dynamic\n"));
                                      break;
        case 128 : _tprintf(_T("static\n"));
                                      break;
        case 130 : _tprintf(_T("invalid\n"));
                                      break;
        case 129 : _tprintf(_T("other\n"));
                                      break;
    }
    return EXIT_SUCCESS;
}
