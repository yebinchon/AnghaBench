
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct protocol {int dummy; } ;
struct TYPE_18__ {TYPE_2__* client; int rfdesc; int name; } ;
struct TYPE_17__ {int AdapterIndex; } ;
struct TYPE_13__ {scalar_t__ state; } ;
struct TYPE_16__ {TYPE_7__ DhclientInfo; TYPE_1__ DhclientState; } ;
struct TYPE_15__ {int Reply; } ;
struct TYPE_14__ {int state; } ;
typedef int (* PipeSendFunc ) (TYPE_3__*) ;
typedef TYPE_4__* PDHCP_ADAPTER ;
typedef int DWORD ;
typedef TYPE_5__ COMM_DHCP_REQ ;
typedef TYPE_3__ COMM_DHCP_REPLY ;


 TYPE_4__* AdapterFindIndex (int ) ;
 int * AdapterStateChangedEvent ;
 int ApiLock () ;
 int ApiUnlock () ;
 int S_INIT ;
 scalar_t__ S_STATIC ;
 int SetEvent (int *) ;
 int add_protocol (int ,int ,int ,TYPE_7__*) ;
 struct protocol* find_protocol_by_adapter (TYPE_7__*) ;
 int got_one ;
 int remove_protocol (struct protocol*) ;
 int state_reboot (TYPE_7__*) ;

DWORD DSRenewIpAddressLease( PipeSendFunc Send, COMM_DHCP_REQ *Req ) {
    COMM_DHCP_REPLY Reply;
    PDHCP_ADAPTER Adapter;
    struct protocol* proto;

    ApiLock();

    Adapter = AdapterFindIndex( Req->AdapterIndex );

    if( !Adapter || Adapter->DhclientState.state == S_STATIC ) {
        Reply.Reply = 0;
        ApiUnlock();
        return Send( &Reply );
    }

    Reply.Reply = 1;

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

    ApiUnlock();

    return Send( &Reply );
}
