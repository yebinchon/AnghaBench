
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_17__ {TYPE_3__* dp2; } ;
struct TYPE_16__ {int dwFlags; } ;
struct TYPE_13__ {int wCommandId; int wVersion; int dwMagic; } ;
struct TYPE_15__ {int dpidNewPlayerId; TYPE_2__ envelope; } ;
struct TYPE_12__ {int dwSPHeaderSize; } ;
struct TYPE_14__ {int lpNameServerData; TYPE_1__ spData; } ;
typedef TYPE_4__* LPDPMSG_NEWPLAYERIDREPLY ;
typedef TYPE_5__* LPCDPMSG_REQUESTNEWPLAYERID ;
typedef TYPE_6__ IDirectPlayImpl ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int BYTE ;
 int DPMSGMAGIC_DPLAYMSG ;
 int DPMSGVER_DP6 ;
 int DP_MSG_ErrorReceived (TYPE_6__*,int,void const*,int ) ;
 int DP_MSG_ReplyReceived (TYPE_6__*,int,void const*,int ) ;
 int DP_MSG_ToSelf (TYPE_6__*,int) ;
 int DP_NextObjectId () ;
 int DP_OK ;
 int DebugBreak () ;
 int FIXME (char*,int) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 void* HeapAlloc (int ,int ,int ) ;
 int NS_AddRemoteComputerAsNameServer (void const*,int ,void const*,int ) ;
 int NS_ReplyToEnumSessionsRequest (void const*,void**,int *,TYPE_6__*) ;
 int NS_SetLocalAddr (int ,void const*,int) ;
 int TRACE (char*,...) ;

HRESULT DP_HandleMessage( IDirectPlayImpl *This, const void *lpcMessageBody,
        DWORD dwMessageBodySize, const void *lpcMessageHeader, WORD wCommandId, WORD wVersion,
        void **lplpReply, DWORD *lpdwMsgSize )
{
  TRACE( "(%p)->(%p,0x%08x,%p,%u,%u)\n",
         This, lpcMessageBody, dwMessageBodySize, lpcMessageHeader, wCommandId,
         wVersion );

  switch( wCommandId )
  {

    case 134:

      NS_ReplyToEnumSessionsRequest( lpcMessageBody, lplpReply, lpdwMsgSize, This );
      break;


    case 135:

      NS_AddRemoteComputerAsNameServer( lpcMessageHeader,
                                        This->dp2->spData.dwSPHeaderSize,
                                        lpcMessageBody,
                                        This->dp2->lpNameServerData );
      break;

    case 128:
    {
      LPCDPMSG_REQUESTNEWPLAYERID lpcMsg = lpcMessageBody;

      LPDPMSG_NEWPLAYERIDREPLY lpReply;

      *lpdwMsgSize = This->dp2->spData.dwSPHeaderSize + sizeof( *lpReply );

      *lplpReply = HeapAlloc( GetProcessHeap(), HEAP_ZERO_MEMORY, *lpdwMsgSize );

      FIXME( "Ignoring dwFlags 0x%08x in request msg\n",
             lpcMsg->dwFlags );


      lpReply = (LPDPMSG_NEWPLAYERIDREPLY)( (BYTE*)(*lplpReply) +
                                            This->dp2->spData.dwSPHeaderSize );

      lpReply->envelope.dwMagic = DPMSGMAGIC_DPLAYMSG;
      lpReply->envelope.wCommandId = 129;
      lpReply->envelope.wVersion = DPMSGVER_DP6;

      lpReply->dpidNewPlayerId = DP_NextObjectId();

      TRACE( "Allocating new playerid 0x%08x from remote request\n",
             lpReply->dpidNewPlayerId );
      break;
    }

    case 131:
    case 129:
      DP_MSG_ReplyReceived( This, wCommandId, lpcMessageBody, dwMessageBodySize );
      break;

    case 130:
      TRACE( "GOT THE SELF MESSAGE: %p -> 0x%08x\n", lpcMessageHeader, ((const DWORD *)lpcMessageHeader)[1] );
      NS_SetLocalAddr( This->dp2->lpNameServerData, lpcMessageHeader, 20 );
      DP_MSG_ReplyReceived( This, wCommandId, lpcMessageBody, dwMessageBodySize );

    case 133:
      TRACE( "Sending message to self to get my addr\n" );
      DP_MSG_ToSelf( This, 1 );
      break;

    case 132:
      DP_MSG_ErrorReceived( This, wCommandId, lpcMessageBody, dwMessageBodySize );
      break;

    default:
      FIXME( "Unknown wCommandId %u. Ignoring message\n", wCommandId );
      DebugBreak();
      break;
  }



  return DP_OK;
}
