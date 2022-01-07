
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_3__* lpNSCache ;
struct TYPE_5__ {TYPE_1__* lpQHFirst; } ;
struct TYPE_6__ {int * lpRemoteAddrHdr; int * lpLocalAddrHdr; scalar_t__ bNsIsLocal; TYPE_2__ first; } ;
struct TYPE_4__ {int * lpNSAddrHdr; } ;
typedef int * LPVOID ;


 int FIXME (char*) ;

LPVOID NS_GetNSAddr( LPVOID lpNSInfo )
{
  lpNSCache lpCache = (lpNSCache)lpNSInfo;

  FIXME( ":quick stub\n" );
  if ( lpCache->first.lpQHFirst )
    return lpCache->first.lpQHFirst->lpNSAddrHdr;

  return ((void*)0);





}
