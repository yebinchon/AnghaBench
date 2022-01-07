
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ i64 ;
struct TYPE_12__ {scalar_t__ nField; } ;
typedef TYPE_1__ UnpackedRecord ;
struct TYPE_14__ {TYPE_2__* pKeyInfo; } ;
struct TYPE_13__ {scalar_t__ nAllField; int db; } ;
typedef TYPE_2__ KeyInfo ;
typedef TYPE_3__ BtCursor ;


 int SQLITE_CORRUPT_BKPT ;
 int SQLITE_NOMEM_BKPT ;
 int assert (int) ;
 int sqlite3BtreeMovetoUnpacked (TYPE_3__*,TYPE_1__*,scalar_t__,int,int*) ;
 int sqlite3DbFree (int ,TYPE_1__*) ;
 TYPE_1__* sqlite3VdbeAllocUnpackedRecord (TYPE_2__*) ;
 int sqlite3VdbeRecordUnpack (TYPE_2__*,int,void const*,TYPE_1__*) ;

__attribute__((used)) static int btreeMoveto(
  BtCursor *pCur,
  const void *pKey,
  i64 nKey,
  int bias,
  int *pRes
){
  int rc;
  UnpackedRecord *pIdxKey;

  if( pKey ){
    KeyInfo *pKeyInfo = pCur->pKeyInfo;
    assert( nKey==(i64)(int)nKey );
    pIdxKey = sqlite3VdbeAllocUnpackedRecord(pKeyInfo);
    if( pIdxKey==0 ) return SQLITE_NOMEM_BKPT;
    sqlite3VdbeRecordUnpack(pKeyInfo, (int)nKey, pKey, pIdxKey);
    if( pIdxKey->nField==0 || pIdxKey->nField>pKeyInfo->nAllField ){
      rc = SQLITE_CORRUPT_BKPT;
      goto moveto_done;
    }
  }else{
    pIdxKey = 0;
  }
  rc = sqlite3BtreeMovetoUnpacked(pCur, pIdxKey, nKey, bias, pRes);
moveto_done:
  if( pIdxKey ){
    sqlite3DbFree(pCur->pKeyInfo->db, pIdxKey);
  }
  return rc;
}
