
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ errCode; } ;
typedef int Pgno ;
typedef TYPE_1__ Pager ;
typedef int DbPage ;


 scalar_t__ SQLITE_OK ;
 int UNUSED_PARAMETER (int) ;
 int assert (int) ;

__attribute__((used)) static int getPageError(
  Pager *pPager,
  Pgno pgno,
  DbPage **ppPage,
  int flags
){
  UNUSED_PARAMETER(pgno);
  UNUSED_PARAMETER(flags);
  assert( pPager->errCode!=SQLITE_OK );
  *ppPage = 0;
  return pPager->errCode;
}
