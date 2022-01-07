
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int NumServers; int * pCurrent; } ;
struct TYPE_6__ {int riCount; int * DnsList; } ;
typedef TYPE_1__* PIPHLP_RES_INFO ;
typedef TYPE_2__ NAME_SERVER_LIST_PRIVATE ;
typedef scalar_t__ LSTATUS ;
typedef int IP_ADDR_STRING ;
typedef int IPHLP_RES_INFO ;


 scalar_t__ CountNameServers (TYPE_2__*) ;
 scalar_t__ ERROR_SUCCESS ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int MakeNameServerList (TYPE_2__*) ;

PIPHLP_RES_INFO
getResInfo()
{
    NAME_SERVER_LIST_PRIVATE PrivateNSEnum;
    PIPHLP_RES_INFO ResInfo;
    IP_ADDR_STRING * DnsList = ((void*)0);
    LSTATUS Status;

    PrivateNSEnum.NumServers = 0;


    Status = CountNameServers(&PrivateNSEnum);

    if (Status != ERROR_SUCCESS)
    {

        return ((void*)0);
    }


    if (PrivateNSEnum.NumServers)
    {

        DnsList = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, PrivateNSEnum.NumServers * sizeof(IP_ADDR_STRING));

        if (!DnsList)
        {

            return ((void*)0);
        }
    }


    ResInfo = (PIPHLP_RES_INFO)HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(IPHLP_RES_INFO));

    if(!ResInfo)
    {

        if (DnsList)
        {

            HeapFree( GetProcessHeap(), 0, DnsList);
        }
        return ((void*)0);
    }


    if (PrivateNSEnum.NumServers)
    {

        PrivateNSEnum.NumServers = 0;
        PrivateNSEnum.pCurrent = DnsList;


        MakeNameServerList( &PrivateNSEnum );


        ResInfo->DnsList = DnsList;
        ResInfo->riCount = PrivateNSEnum.NumServers;
    }


    return ResInfo;
}
