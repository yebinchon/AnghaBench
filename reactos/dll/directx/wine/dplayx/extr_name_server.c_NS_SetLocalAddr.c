
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* lpNSCache ;
struct TYPE_2__ {int lpLocalAddrHdr; } ;
typedef int LPVOID ;
typedef int LPCVOID ;
typedef int DWORD ;


 int CopyMemory (int ,int ,int ) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 int HeapAlloc (int ,int ,int ) ;

void NS_SetLocalAddr( LPVOID lpNSInfo, LPCVOID lpHdr, DWORD dwHdrSize )
{
  lpNSCache lpCache = (lpNSCache)lpNSInfo;

  lpCache->lpLocalAddrHdr = HeapAlloc( GetProcessHeap(), HEAP_ZERO_MEMORY, dwHdrSize );

  CopyMemory( lpCache->lpLocalAddrHdr, lpHdr, dwHdrSize );
}
