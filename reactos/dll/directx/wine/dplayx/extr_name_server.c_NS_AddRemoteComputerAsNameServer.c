
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


typedef TYPE_3__* lpNSCacheData ;
typedef TYPE_4__* lpNSCache ;
struct TYPE_17__ {int guidInstance; } ;
struct TYPE_12__ {int * lpszSessionNameA; } ;
struct TYPE_13__ {TYPE_1__ u1; int guidInstance; } ;
struct TYPE_16__ {TYPE_2__ sd; } ;
struct TYPE_15__ {TYPE_3__* present; int first; } ;
struct TYPE_14__ {int dwTime; TYPE_2__* data; void* lpNSAddrHdr; } ;
typedef int LPVOID ;
typedef int LPCWSTR ;
typedef int LPCVOID ;
typedef TYPE_5__* LPCDPMSG_ENUMSESSIONSREPLY ;
typedef int DWORD ;


 int CP_ACP ;
 int CopyMemory (void*,int ,int) ;
 int DPQ_INSERT (int ,TYPE_3__*,int ) ;
 int DPQ_REMOVE_ENTRY_CB (int ,int ,int ,int ,int ,TYPE_3__*) ;
 int ERR (char*) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 void* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_3__*) ;
 int NS_PruneSessionCache (int ) ;
 int TRACE (char*,int ,...) ;
 int WideCharToMultiByte (int ,int ,int ,int,int *,int,int *,int *) ;
 int cbDeleteNSNodeFromHeap (TYPE_3__*) ;
 int cbUglyPig ;
 TYPE_6__* data ;
 int debugstr_guid (int *) ;
 int next ;
 int timeGetTime () ;

void NS_AddRemoteComputerAsNameServer( LPCVOID lpcNSAddrHdr,
                                       DWORD dwHdrSize,
                                       LPCDPMSG_ENUMSESSIONSREPLY lpcMsg,
                                       LPVOID lpNSInfo )
{
  DWORD len;
  lpNSCache lpCache = (lpNSCache)lpNSInfo;
  lpNSCacheData lpCacheNode;

  TRACE( "%p, %p, %p\n", lpcNSAddrHdr, lpcMsg, lpNSInfo );


  DPQ_REMOVE_ENTRY_CB( lpCache->first, next, data->guidInstance, cbUglyPig,
                       lpcMsg->sd.guidInstance, lpCacheNode );

  if( lpCacheNode != ((void*)0) )
  {
    TRACE( "Duplicate session entry for %s removed - updated version kept\n",
           debugstr_guid( &lpCacheNode->data->guidInstance ) );
    cbDeleteNSNodeFromHeap( lpCacheNode );
  }


  lpCacheNode = HeapAlloc( GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof( *lpCacheNode ) );

  if( lpCacheNode == ((void*)0) )
  {
    ERR( "no memory for NS node\n" );
    return;
  }

  lpCacheNode->lpNSAddrHdr = HeapAlloc( GetProcessHeap(), HEAP_ZERO_MEMORY,
                                        dwHdrSize );
  CopyMemory( lpCacheNode->lpNSAddrHdr, lpcNSAddrHdr, dwHdrSize );

  lpCacheNode->data = HeapAlloc( GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof( *(lpCacheNode->data) ) );

  if( lpCacheNode->data == ((void*)0) )
  {
    ERR( "no memory for SESSIONDESC2\n" );
    HeapFree( GetProcessHeap(), 0, lpCacheNode );
    return;
  }

  *lpCacheNode->data = lpcMsg->sd;
  len = WideCharToMultiByte( CP_ACP, 0, (LPCWSTR)(lpcMsg+1), -1, ((void*)0), 0, ((void*)0), ((void*)0) );
  if ((lpCacheNode->data->u1.lpszSessionNameA = HeapAlloc( GetProcessHeap(), 0, len )))
  {
      WideCharToMultiByte( CP_ACP, 0, (LPCWSTR)(lpcMsg+1), -1,
                           lpCacheNode->data->u1.lpszSessionNameA, len, ((void*)0), ((void*)0) );
  }

  lpCacheNode->dwTime = timeGetTime();

  DPQ_INSERT(lpCache->first, lpCacheNode, next );

  lpCache->present = lpCacheNode;




  NS_PruneSessionCache( lpNSInfo );
}
