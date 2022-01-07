
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nFetchOut; scalar_t__ pMapRegion; } ;
typedef TYPE_1__ unixFile ;
typedef void u8 ;
typedef int sqlite3_file ;
typedef size_t i64 ;


 int SQLITE_OK ;
 int UNUSED_PARAMETER (size_t) ;
 int assert (int) ;
 int unixUnmapfile (TYPE_1__*) ;

__attribute__((used)) static int unixUnfetch(sqlite3_file *fd, i64 iOff, void *p){
  unixFile *pFd = (unixFile *)fd;
  UNUSED_PARAMETER(iOff);




  assert( (p==0)==(pFd->nFetchOut==0) );


  assert( p==0 || p==&((u8 *)pFd->pMapRegion)[iOff] );

  if( p ){
    pFd->nFetchOut--;
  }else{
    unixUnmapfile(pFd);
  }

  assert( pFd->nFetchOut>=0 );
  return SQLITE_OK;
}
