
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int dwMessageSize; int bReturnStatus; scalar_t__ lpMessage; int lpISP; } ;
struct TYPE_8__ {int wVersion; int wCommandId; int dwMagic; } ;
struct TYPE_11__ {int dwFlags; int guidApplication; scalar_t__ dwPasswordSize; TYPE_1__ envelope; } ;
struct TYPE_10__ {int dwSPHeaderSize; TYPE_2__* lpCB; int lpISP; } ;
struct TYPE_9__ {int (* EnumSessions ) (TYPE_5__*) ;} ;
typedef TYPE_3__ SPINITDATA ;
typedef TYPE_4__* LPDPMSG_ENUMSESSIONSREQUEST ;
typedef int * LPCGUID ;
typedef int HRESULT ;
typedef int DWORD ;
typedef TYPE_5__ DPSP_ENUMSESSIONSDATA ;
typedef int BYTE ;


 int DPENUMSESSIONS_RETURNSTATUS ;
 int DPMSGCMD_ENUMSESSIONSREQUEST ;
 int DPMSGMAGIC_DPLAYMSG ;
 int DPMSGVER_DP6 ;
 int FIXME (char*) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 scalar_t__ HeapAlloc (int ,int ,int) ;
 int TRACE (char*,int ) ;
 int debugstr_guid (int *) ;
 int stub1 (TYPE_5__*) ;

HRESULT NS_SendSessionRequestBroadcast( LPCGUID lpcGuid,
                                        DWORD dwFlags,
                                        const SPINITDATA *lpSpData )

{
  DPSP_ENUMSESSIONSDATA data;
  LPDPMSG_ENUMSESSIONSREQUEST lpMsg;

  TRACE( "enumerating for guid %s\n", debugstr_guid( lpcGuid ) );


  FIXME( ": not all data fields are correct\n" );

  data.dwMessageSize = lpSpData->dwSPHeaderSize + sizeof( *lpMsg );
  data.lpMessage = HeapAlloc( GetProcessHeap(), HEAP_ZERO_MEMORY,
                              data.dwMessageSize );
  data.lpISP = lpSpData->lpISP;
  data.bReturnStatus = (dwFlags & DPENUMSESSIONS_RETURNSTATUS) != 0;


  lpMsg = (LPDPMSG_ENUMSESSIONSREQUEST)(((BYTE*)data.lpMessage)+lpSpData->dwSPHeaderSize);


  lpMsg->envelope.dwMagic = DPMSGMAGIC_DPLAYMSG;
  lpMsg->envelope.wCommandId = DPMSGCMD_ENUMSESSIONSREQUEST;
  lpMsg->envelope.wVersion = DPMSGVER_DP6;

  lpMsg->dwPasswordSize = 0;
  lpMsg->dwFlags = dwFlags;

  lpMsg->guidApplication = *lpcGuid;

  return (lpSpData->lpCB->EnumSessions)( &data );
}
