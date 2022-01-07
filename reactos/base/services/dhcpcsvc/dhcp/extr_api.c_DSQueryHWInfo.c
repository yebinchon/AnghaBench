
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {int AdapterIndex; } ;
struct TYPE_10__ {int dwSpeed; int dwMtu; int dwType; } ;
struct TYPE_13__ {TYPE_1__ IfMib; } ;
struct TYPE_11__ {int Speed; int Mtu; int MediaType; int AdapterIndex; } ;
struct TYPE_12__ {int Reply; TYPE_2__ QueryHWInfo; } ;
typedef int (* PipeSendFunc ) (TYPE_3__*) ;
typedef TYPE_4__* PDHCP_ADAPTER ;
typedef int DWORD ;
typedef TYPE_5__ COMM_DHCP_REQ ;
typedef TYPE_3__ COMM_DHCP_REPLY ;


 TYPE_4__* AdapterFindIndex (int ) ;
 int ApiLock () ;
 int ApiUnlock () ;

DWORD DSQueryHWInfo( PipeSendFunc Send, COMM_DHCP_REQ *Req ) {
    COMM_DHCP_REPLY Reply;
    PDHCP_ADAPTER Adapter;

    ApiLock();

    Adapter = AdapterFindIndex( Req->AdapterIndex );

    Reply.Reply = Adapter ? 1 : 0;

    if (Adapter) {
        Reply.QueryHWInfo.AdapterIndex = Req->AdapterIndex;
        Reply.QueryHWInfo.MediaType = Adapter->IfMib.dwType;
        Reply.QueryHWInfo.Mtu = Adapter->IfMib.dwMtu;
        Reply.QueryHWInfo.Speed = Adapter->IfMib.dwSpeed;
    }

    ApiUnlock();

    return Send( &Reply );
}
