
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_18__ {int AdapterIndex; } ;
struct TYPE_14__ {scalar_t__ state; TYPE_2__* active; } ;
struct TYPE_17__ {TYPE_3__ DhclientState; } ;
struct TYPE_15__ {int DhcpEnabled; scalar_t__ LeaseExpires; scalar_t__ LeaseObtained; void* DhcpServer; } ;
struct TYPE_16__ {int Reply; TYPE_4__ GetAdapterInfo; } ;
struct TYPE_12__ {int len; int iabuf; } ;
struct TYPE_13__ {scalar_t__ expiry; scalar_t__ obtained; TYPE_1__ serveraddress; } ;
typedef int (* PipeSendFunc ) (TYPE_5__*) ;
typedef TYPE_6__* PDHCP_ADAPTER ;
typedef int DWORD ;
typedef TYPE_7__ COMM_DHCP_REQ ;
typedef TYPE_5__ COMM_DHCP_REPLY ;


 TYPE_6__* AdapterFindIndex (int ) ;
 int ApiLock () ;
 int ApiUnlock () ;
 int DPRINT1 (char*,int) ;
 int INADDR_NONE ;
 scalar_t__ S_BOUND ;
 scalar_t__ S_STATIC ;
 void* htonl (int ) ;
 int memcpy (void**,int ,int) ;

DWORD DSGetAdapterInfo( PipeSendFunc Send, COMM_DHCP_REQ *Req ) {
    COMM_DHCP_REPLY Reply;
    PDHCP_ADAPTER Adapter;

    ApiLock();

    Adapter = AdapterFindIndex( Req->AdapterIndex );

    Reply.Reply = Adapter ? 1 : 0;

    if( Adapter ) {
        Reply.GetAdapterInfo.DhcpEnabled = (S_STATIC != Adapter->DhclientState.state);
        if (S_BOUND == Adapter->DhclientState.state) {
            if (sizeof(Reply.GetAdapterInfo.DhcpServer) ==
                Adapter->DhclientState.active->serveraddress.len) {
                memcpy(&Reply.GetAdapterInfo.DhcpServer,
                       Adapter->DhclientState.active->serveraddress.iabuf,
                       Adapter->DhclientState.active->serveraddress.len);
            } else {
                DPRINT1("Unexpected server address len %d\n",
                        Adapter->DhclientState.active->serveraddress.len);
                Reply.GetAdapterInfo.DhcpServer = htonl(INADDR_NONE);
            }
            Reply.GetAdapterInfo.LeaseObtained = Adapter->DhclientState.active->obtained;
            Reply.GetAdapterInfo.LeaseExpires = Adapter->DhclientState.active->expiry;
        } else {
            Reply.GetAdapterInfo.DhcpServer = htonl(INADDR_NONE);
            Reply.GetAdapterInfo.LeaseObtained = 0;
            Reply.GetAdapterInfo.LeaseExpires = 0;
        }
    }

    ApiUnlock();

    return Send( &Reply );
}
