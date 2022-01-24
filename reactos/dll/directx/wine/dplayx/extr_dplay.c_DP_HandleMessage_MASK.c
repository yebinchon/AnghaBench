#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int WORD ;
struct TYPE_17__ {TYPE_3__* dp2; } ;
struct TYPE_16__ {int dwFlags; } ;
struct TYPE_13__ {int wCommandId; int /*<<< orphan*/  wVersion; int /*<<< orphan*/  dwMagic; } ;
struct TYPE_15__ {int /*<<< orphan*/  dpidNewPlayerId; TYPE_2__ envelope; } ;
struct TYPE_12__ {int /*<<< orphan*/  dwSPHeaderSize; } ;
struct TYPE_14__ {int /*<<< orphan*/  lpNameServerData; TYPE_1__ spData; } ;
typedef  TYPE_4__* LPDPMSG_NEWPLAYERIDREPLY ;
typedef  TYPE_5__* LPCDPMSG_REQUESTNEWPLAYERID ;
typedef  TYPE_6__ IDirectPlayImpl ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
#define  DPMSGCMD_ENUMSESSIONSREPLY 135 
#define  DPMSGCMD_ENUMSESSIONSREQUEST 134 
#define  DPMSGCMD_FORWARDADDPLAYER 133 
#define  DPMSGCMD_FORWARDADDPLAYERNACK 132 
#define  DPMSGCMD_GETNAMETABLEREPLY 131 
#define  DPMSGCMD_JUSTENVELOPE 130 
#define  DPMSGCMD_NEWPLAYERIDREPLY 129 
#define  DPMSGCMD_REQUESTNEWPLAYERID 128 
 int /*<<< orphan*/  DPMSGMAGIC_DPLAYMSG ; 
 int /*<<< orphan*/  DPMSGVER_DP6 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,int,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,int,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  DP_OK ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 void* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void const*,int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void const*,void**,int /*<<< orphan*/ *,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,void const*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 

HRESULT FUNC12( IDirectPlayImpl *This, const void *lpcMessageBody,
        DWORD dwMessageBodySize, const void *lpcMessageHeader, WORD wCommandId, WORD wVersion,
        void **lplpReply, DWORD *lpdwMsgSize )
{
  FUNC11( "(%p)->(%p,0x%08x,%p,%u,%u)\n",
         This, lpcMessageBody, dwMessageBodySize, lpcMessageHeader, wCommandId,
         wVersion );

  switch( wCommandId )
  {
    /* Name server needs to handle this request */
    case DPMSGCMD_ENUMSESSIONSREQUEST:
      /* Reply expected */
      FUNC9( lpcMessageBody, lplpReply, lpdwMsgSize, This );
      break;

    /* Name server needs to handle this request */
    case DPMSGCMD_ENUMSESSIONSREPLY:
      /* No reply expected */
      FUNC8( lpcMessageHeader,
                                        This->dp2->spData.dwSPHeaderSize,
                                        lpcMessageBody,
                                        This->dp2->lpNameServerData );
      break;

    case DPMSGCMD_REQUESTNEWPLAYERID:
    {
      LPCDPMSG_REQUESTNEWPLAYERID lpcMsg = lpcMessageBody;

      LPDPMSG_NEWPLAYERIDREPLY lpReply;

      *lpdwMsgSize = This->dp2->spData.dwSPHeaderSize + sizeof( *lpReply );

      *lplpReply = FUNC7( FUNC6(), HEAP_ZERO_MEMORY, *lpdwMsgSize );

      FUNC5( "Ignoring dwFlags 0x%08x in request msg\n",
             lpcMsg->dwFlags );

      /* Setup the reply */
      lpReply = (LPDPMSG_NEWPLAYERIDREPLY)( (BYTE*)(*lplpReply) +
                                            This->dp2->spData.dwSPHeaderSize );

      lpReply->envelope.dwMagic    = DPMSGMAGIC_DPLAYMSG;
      lpReply->envelope.wCommandId = DPMSGCMD_NEWPLAYERIDREPLY;
      lpReply->envelope.wVersion   = DPMSGVER_DP6;

      lpReply->dpidNewPlayerId = FUNC3();

      FUNC11( "Allocating new playerid 0x%08x from remote request\n",
             lpReply->dpidNewPlayerId );
      break;
    }

    case DPMSGCMD_GETNAMETABLEREPLY:
    case DPMSGCMD_NEWPLAYERIDREPLY:
      FUNC1( This, wCommandId, lpcMessageBody, dwMessageBodySize );
      break;

    case DPMSGCMD_JUSTENVELOPE:
      FUNC11( "GOT THE SELF MESSAGE: %p -> 0x%08x\n", lpcMessageHeader, ((const DWORD *)lpcMessageHeader)[1] );
      FUNC10( This->dp2->lpNameServerData, lpcMessageHeader, 20 );
      FUNC1( This, wCommandId, lpcMessageBody, dwMessageBodySize );

    case DPMSGCMD_FORWARDADDPLAYER:
      FUNC11( "Sending message to self to get my addr\n" );
      FUNC2( This, 1 ); /* This is a hack right now */
      break;

    case DPMSGCMD_FORWARDADDPLAYERNACK:
      FUNC0( This, wCommandId, lpcMessageBody, dwMessageBodySize );
      break;

    default:
      FUNC5( "Unknown wCommandId %u. Ignoring message\n", wCommandId );
      FUNC4();
      break;
  }

  /* FIXME: There is code in dplaysp.c to handle dplay commands. Move to here. */

  return DP_OK;
}