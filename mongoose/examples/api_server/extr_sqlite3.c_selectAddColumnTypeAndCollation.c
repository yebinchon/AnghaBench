
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct ExprList_item {int * pExpr; } ;
struct TYPE_17__ {scalar_t__ mallocFailed; } ;
typedef TYPE_2__ sqlite3 ;
typedef int sNC ;
struct TYPE_22__ {int zName; } ;
struct TYPE_21__ {scalar_t__ affinity; void* zColl; void* zType; } ;
struct TYPE_20__ {int pSrcList; } ;
struct TYPE_19__ {TYPE_2__* db; } ;
struct TYPE_18__ {int selFlags; TYPE_1__* pEList; int pSrc; } ;
struct TYPE_16__ {int nExpr; struct ExprList_item* a; } ;
typedef TYPE_3__ Select ;
typedef TYPE_4__ Parse ;
typedef TYPE_5__ NameContext ;
typedef int Expr ;
typedef TYPE_6__ Column ;
typedef TYPE_7__ CollSeq ;


 int SF_Resolved ;
 scalar_t__ SQLITE_AFF_NONE ;
 int assert (int) ;
 int columnType (TYPE_5__*,int *,int ,int ,int ) ;
 int memset (TYPE_5__*,int ,int) ;
 void* sqlite3DbStrDup (TYPE_2__*,int ) ;
 scalar_t__ sqlite3ExprAffinity (int *) ;
 TYPE_7__* sqlite3ExprCollSeq (TYPE_4__*,int *) ;

__attribute__((used)) static void selectAddColumnTypeAndCollation(
  Parse *pParse,
  int nCol,
  Column *aCol,
  Select *pSelect
){
  sqlite3 *db = pParse->db;
  NameContext sNC;
  Column *pCol;
  CollSeq *pColl;
  int i;
  Expr *p;
  struct ExprList_item *a;

  assert( pSelect!=0 );
  assert( (pSelect->selFlags & SF_Resolved)!=0 );
  assert( nCol==pSelect->pEList->nExpr || db->mallocFailed );
  if( db->mallocFailed ) return;
  memset(&sNC, 0, sizeof(sNC));
  sNC.pSrcList = pSelect->pSrc;
  a = pSelect->pEList->a;
  for(i=0, pCol=aCol; i<nCol; i++, pCol++){
    p = a[i].pExpr;
    pCol->zType = sqlite3DbStrDup(db, columnType(&sNC, p, 0, 0, 0));
    pCol->affinity = sqlite3ExprAffinity(p);
    if( pCol->affinity==0 ) pCol->affinity = SQLITE_AFF_NONE;
    pColl = sqlite3ExprCollSeq(pParse, p);
    if( pColl ){
      pCol->zColl = sqlite3DbStrDup(db, pColl->zName);
    }
  }
}
