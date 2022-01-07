
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ i64 ;
struct TYPE_10__ {scalar_t__ aAlloc; scalar_t__ nAlloc; scalar_t__ aBuffer; scalar_t__ aMap; scalar_t__ iReadOff; scalar_t__ iEof; } ;
struct TYPE_9__ {scalar_t__ iEof; } ;
typedef TYPE_1__ SorterFile ;
typedef int SortSubtask ;
typedef TYPE_2__ PmaReader ;


 int SQLITE_OK ;
 int assert (int) ;
 int vdbePmaReadVarint (TYPE_2__*,scalar_t__*) ;
 int vdbePmaReaderNext (TYPE_2__*) ;
 int vdbePmaReaderSeek (int *,TYPE_2__*,TYPE_1__*,scalar_t__) ;

__attribute__((used)) static int vdbePmaReaderInit(
  SortSubtask *pTask,
  SorterFile *pFile,
  i64 iStart,
  PmaReader *pReadr,
  i64 *pnByte
){
  int rc;

  assert( pFile->iEof>iStart );
  assert( pReadr->aAlloc==0 && pReadr->nAlloc==0 );
  assert( pReadr->aBuffer==0 );
  assert( pReadr->aMap==0 );

  rc = vdbePmaReaderSeek(pTask, pReadr, pFile, iStart);
  if( rc==SQLITE_OK ){
    u64 nByte = 0;
    rc = vdbePmaReadVarint(pReadr, &nByte);
    pReadr->iEof = pReadr->iReadOff + nByte;
    *pnByte += nByte;
  }

  if( rc==SQLITE_OK ){
    rc = vdbePmaReaderNext(pReadr);
  }
  return rc;
}
