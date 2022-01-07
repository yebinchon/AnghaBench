
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct protocol {int dummy; } ;
struct TYPE_16__ {TYPE_1__* client; int rfdesc; int name; } ;
struct TYPE_15__ {int AdapterIndex; } ;
struct TYPE_14__ {TYPE_6__ DhclientInfo; } ;
struct TYPE_13__ {int Reply; } ;
struct TYPE_12__ {int state; } ;
typedef int (* PipeSendFunc ) (TYPE_2__*) ;
typedef TYPE_3__* PDHCP_ADAPTER ;
typedef int DWORD ;
typedef TYPE_4__ COMM_DHCP_REQ ;
typedef TYPE_2__ COMM_DHCP_REPLY ;


 TYPE_3__* AdapterFindIndex (int ) ;
 int * AdapterStateChangedEvent ;
 int ApiLock () ;
 int ApiUnlock () ;
 int S_INIT ;
 int SetEvent (int *) ;
 int add_protocol (int ,int ,int ,TYPE_6__*) ;
 struct protocol* find_protocol_by_adapter (TYPE_6__*) ;
 int got_one ;
 int remove_protocol (struct protocol*) ;
 int state_reboot (TYPE_6__*) ;

DWORD DSLeaseIpAddress( PipeSendFunc Send, COMM_DHCP_REQ *Req ) {
    COMM_DHCP_REPLY Reply;
    PDHCP_ADAPTER Adapter;
    struct protocol* proto;

    ApiLock();

    Adapter = AdapterFindIndex( Req->AdapterIndex );

    Reply.Reply = Adapter ? 1 : 0;

    if( Adapter ) {
        proto = find_protocol_by_adapter( &Adapter->DhclientInfo );
        if (proto)
            remove_protocol(proto);

        add_protocol( Adapter->DhclientInfo.name,
                      Adapter->DhclientInfo.rfdesc, got_one,
                      &Adapter->DhclientInfo );

        Adapter->DhclientInfo.client->state = S_INIT;
        state_reboot(&Adapter->DhclientInfo);

        if (AdapterStateChangedEvent != ((void*)0))
            SetEvent(AdapterStateChangedEvent);
    }

    ApiUnlock();

    return Send( &Reply );
}
