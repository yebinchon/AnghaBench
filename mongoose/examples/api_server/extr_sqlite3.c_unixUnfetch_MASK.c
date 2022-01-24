#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ nFetchOut; scalar_t__ pMapRegion; } ;
typedef  TYPE_1__ unixFile ;
typedef  void u8 ;
typedef  int /*<<< orphan*/  sqlite3_file ;
typedef  size_t i64 ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(sqlite3_file *fd, i64 iOff, void *p){
  unixFile *pFd = (unixFile *)fd;   /* The underlying database file */
  FUNC0(iOff);

  /* If p==0 (unmap the entire file) then there must be no outstanding 
  ** xFetch references. Or, if p!=0 (meaning it is an xFetch reference),
  ** then there must be at least one outstanding.  */
  FUNC1( (p==0)==(pFd->nFetchOut==0) );

  /* If p!=0, it must match the iOff value. */
  FUNC1( p==0 || p==&((u8 *)pFd->pMapRegion)[iOff] );

  if( p ){
    pFd->nFetchOut--;
  }else{
    FUNC2(pFd);
  }

  FUNC1( pFd->nFetchOut>=0 );
  return SQLITE_OK;
}