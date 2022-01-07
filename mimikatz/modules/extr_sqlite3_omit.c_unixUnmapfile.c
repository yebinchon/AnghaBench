
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nFetchOut; scalar_t__ mmapSizeActual; scalar_t__ mmapSize; scalar_t__ pMapRegion; } ;
typedef TYPE_1__ unixFile ;


 int assert (int) ;
 int osMunmap (scalar_t__,scalar_t__) ;

__attribute__((used)) static void unixUnmapfile(unixFile *pFd){
  assert( pFd->nFetchOut==0 );
  if( pFd->pMapRegion ){
    osMunmap(pFd->pMapRegion, pFd->mmapSizeActual);
    pFd->pMapRegion = 0;
    pFd->mmapSize = 0;
    pFd->mmapSizeActual = 0;
  }
}
