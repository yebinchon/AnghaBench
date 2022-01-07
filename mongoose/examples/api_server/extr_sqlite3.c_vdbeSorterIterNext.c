
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int sqlite3 ;
struct TYPE_6__ {scalar_t__ iReadOff; scalar_t__ iEof; int nKey; int aKey; } ;
typedef TYPE_1__ VdbeSorterIter ;


 int SQLITE_OK ;
 int vdbeSorterIterRead (int *,TYPE_1__*,int,int *) ;
 int vdbeSorterIterVarint (int *,TYPE_1__*,scalar_t__*) ;
 int vdbeSorterIterZero (int *,TYPE_1__*) ;

__attribute__((used)) static int vdbeSorterIterNext(
  sqlite3 *db,
  VdbeSorterIter *pIter
){
  int rc;
  u64 nRec = 0;

  if( pIter->iReadOff>=pIter->iEof ){

    vdbeSorterIterZero(db, pIter);
    return SQLITE_OK;
  }

  rc = vdbeSorterIterVarint(db, pIter, &nRec);
  if( rc==SQLITE_OK ){
    pIter->nKey = (int)nRec;
    rc = vdbeSorterIterRead(db, pIter, (int)nRec, &pIter->aKey);
  }

  return rc;
}
