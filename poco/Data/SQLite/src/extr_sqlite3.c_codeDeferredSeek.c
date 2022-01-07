
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int wctrlFlags; TYPE_3__* pParse; } ;
typedef TYPE_1__ WhereInfo ;
typedef int Vdbe ;
struct TYPE_10__ {int nCol; } ;
typedef TYPE_2__ Table ;
struct TYPE_13__ {int writeMask; } ;
struct TYPE_12__ {int* aiColumn; int nColumn; TYPE_2__* pTable; } ;
struct TYPE_11__ {int db; int * pVdbe; } ;
typedef TYPE_3__ Parse ;
typedef TYPE_4__ Index ;


 scalar_t__ DbMaskAllZero (int ) ;
 int OP_DeferredSeek ;
 int P4_INTARRAY ;
 int WHERE_OR_SUBCLAUSE ;
 int assert (int) ;
 scalar_t__ sqlite3DbMallocZero (int ,int) ;
 TYPE_5__* sqlite3ParseToplevel (TYPE_3__*) ;
 int sqlite3VdbeAddOp3 (int *,int ,int,int ,int) ;
 int sqlite3VdbeChangeP4 (int *,int,char*,int ) ;

__attribute__((used)) static void codeDeferredSeek(
  WhereInfo *pWInfo,
  Index *pIdx,
  int iCur,
  int iIdxCur
){
  Parse *pParse = pWInfo->pParse;
  Vdbe *v = pParse->pVdbe;

  assert( iIdxCur>0 );
  assert( pIdx->aiColumn[pIdx->nColumn-1]==-1 );

  sqlite3VdbeAddOp3(v, OP_DeferredSeek, iIdxCur, 0, iCur);
  if( (pWInfo->wctrlFlags & WHERE_OR_SUBCLAUSE)
   && DbMaskAllZero(sqlite3ParseToplevel(pParse)->writeMask)
  ){
    int i;
    Table *pTab = pIdx->pTable;
    int *ai = (int*)sqlite3DbMallocZero(pParse->db, sizeof(int)*(pTab->nCol+1));
    if( ai ){
      ai[0] = pTab->nCol;
      for(i=0; i<pIdx->nColumn-1; i++){
        assert( pIdx->aiColumn[i]<pTab->nCol );
        if( pIdx->aiColumn[i]>=0 ) ai[pIdx->aiColumn[i]+1] = i+1;
      }
      sqlite3VdbeChangeP4(v, -1, (char*)ai, P4_INTARRAY);
    }
  }
}
