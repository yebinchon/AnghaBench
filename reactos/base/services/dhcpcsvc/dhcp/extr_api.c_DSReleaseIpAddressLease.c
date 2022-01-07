
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct protocol {int dummy; } ;
struct TYPE_16__ {scalar_t__ dwForwardNextHop; } ;
struct TYPE_15__ {TYPE_1__* client; } ;
struct TYPE_14__ {int AdapterIndex; } ;
struct TYPE_13__ {TYPE_6__ DhclientInfo; TYPE_7__ RouterMib; scalar_t__ NteContext; } ;
struct TYPE_12__ {int Reply; } ;
struct TYPE_11__ {int state; int * active; } ;
typedef int (* PipeSendFunc ) (TYPE_2__*) ;
typedef TYPE_3__* PDHCP_ADAPTER ;
typedef int DWORD ;
typedef TYPE_4__ COMM_DHCP_REQ ;
typedef TYPE_2__ COMM_DHCP_REPLY ;


 TYPE_3__* AdapterFindIndex (int ) ;
 int * AdapterStateChangedEvent ;
 int ApiLock () ;
 int ApiUnlock () ;
 int DeleteIPAddress (scalar_t__) ;
 int DeleteIpForwardEntry (TYPE_7__*) ;
 int S_INIT ;
 int SetEvent (int *) ;
 struct protocol* find_protocol_by_adapter (TYPE_6__*) ;
 int remove_protocol (struct protocol*) ;

DWORD DSReleaseIpAddressLease( PipeSendFunc Send, COMM_DHCP_REQ *Req ) {
    COMM_DHCP_REPLY Reply;
    PDHCP_ADAPTER Adapter;
    struct protocol* proto;

    ApiLock();

    Adapter = AdapterFindIndex( Req->AdapterIndex );

    Reply.Reply = Adapter ? 1 : 0;

    if( Adapter ) {
        if (Adapter->NteContext)
        {
            DeleteIPAddress( Adapter->NteContext );
            Adapter->NteContext = 0;
        }
        if (Adapter->RouterMib.dwForwardNextHop)
        {
            DeleteIpForwardEntry( &Adapter->RouterMib );
            Adapter->RouterMib.dwForwardNextHop = 0;
        }

        proto = find_protocol_by_adapter( &Adapter->DhclientInfo );
        if (proto)
           remove_protocol(proto);

        Adapter->DhclientInfo.client->active = ((void*)0);
        Adapter->DhclientInfo.client->state = S_INIT;

        if (AdapterStateChangedEvent != ((void*)0))
            SetEvent(AdapterStateChangedEvent);
    }

    ApiUnlock();

    return Send( &Reply );
}
