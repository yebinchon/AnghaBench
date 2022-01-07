
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_11__ {int lpszSessionNameA; } ;
struct TYPE_15__ {TYPE_3__ u1; int dwSize; } ;
struct TYPE_14__ {TYPE_4__* dp2; } ;
struct TYPE_10__ {int wVersion; int wCommandId; int dwMagic; } ;
struct TYPE_13__ {int dwUnknown; int sd; TYPE_2__ envelope; } ;
struct TYPE_9__ {int dwSPHeaderSize; } ;
struct TYPE_12__ {TYPE_8__* lpSessionDesc; TYPE_1__ spData; } ;
typedef int * LPWSTR ;
typedef TYPE_5__* LPDPMSG_ENUMSESSIONSREPLY ;
typedef TYPE_6__ IDirectPlayImpl ;
typedef int DWORD ;
typedef int BYTE ;


 int CP_ACP ;
 int CopyMemory (int *,TYPE_8__*,int ) ;
 int DPMSGCMD_ENUMSESSIONSREPLY ;
 int DPMSGMAGIC_DPLAYMSG ;
 int DPMSGVER_DP6 ;
 int FIXME (char*) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 void* HeapAlloc (int ,int ,int) ;
 int MultiByteToWideChar (int ,int ,int ,int,int *,int) ;

void NS_ReplyToEnumSessionsRequest( const void *lpcMsg, void **lplpReplyData, DWORD *lpdwReplySize,
        IDirectPlayImpl *lpDP )
{
  LPDPMSG_ENUMSESSIONSREPLY rmsg;
  DWORD dwVariableSize;
  DWORD dwVariableLen;



  FIXME( ": few fixed + need to check request for response, might need UNICODE input ability.\n" );

  dwVariableLen = MultiByteToWideChar( CP_ACP, 0,
                                       lpDP->dp2->lpSessionDesc->u1.lpszSessionNameA,
                                       -1, ((void*)0), 0 );
  dwVariableSize = dwVariableLen * sizeof( WCHAR );

  *lpdwReplySize = lpDP->dp2->spData.dwSPHeaderSize +
                     sizeof( *rmsg ) + dwVariableSize;
  *lplpReplyData = HeapAlloc( GetProcessHeap(), HEAP_ZERO_MEMORY,
                              *lpdwReplySize );

  rmsg = (LPDPMSG_ENUMSESSIONSREPLY)( (BYTE*)*lplpReplyData +
                                             lpDP->dp2->spData.dwSPHeaderSize);

  rmsg->envelope.dwMagic = DPMSGMAGIC_DPLAYMSG;
  rmsg->envelope.wCommandId = DPMSGCMD_ENUMSESSIONSREPLY;
  rmsg->envelope.wVersion = DPMSGVER_DP6;

  CopyMemory( &rmsg->sd, lpDP->dp2->lpSessionDesc,
              lpDP->dp2->lpSessionDesc->dwSize );
  rmsg->dwUnknown = 0x0000005c;
  MultiByteToWideChar( CP_ACP, 0, lpDP->dp2->lpSessionDesc->u1.lpszSessionNameA, -1,
                       (LPWSTR)(rmsg+1), dwVariableLen );
}
