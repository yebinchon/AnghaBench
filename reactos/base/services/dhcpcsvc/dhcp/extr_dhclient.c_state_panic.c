
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct interface_info {int dummy; } ;
struct TYPE_4__ {int dwIndex; } ;
struct TYPE_5__ {int NteInstance; int NteContext; TYPE_1__ IfMib; } ;
typedef TYPE_2__* PDHCP_ADAPTER ;


 TYPE_2__* AdapterFindInfo (struct interface_info*) ;
 int AddIPAddress (int ,int ,int ,int *,int *) ;
 int DbgPrint (char*) ;
 int htonl (int) ;
 int note (char*) ;
 int rand () ;

void
state_panic(void *ipp)
{
 struct interface_info *ip = ipp;
        PDHCP_ADAPTER Adapter = AdapterFindInfo(ip);

 note("No DHCPOFFERS received.");

        if (!Adapter->NteContext)
        {

            DbgPrint("DHCPCSVC: Failed to receive a response from a DHCP server. An automatic private address will be assigned.\n");


            AddIPAddress(htonl(0xA9FE0000 | (rand() % 0xFFFF)),
                         htonl(0xFFFF0000),
                         Adapter->IfMib.dwIndex,
                         &Adapter->NteContext,
                         &Adapter->NteInstance);
        }
}
