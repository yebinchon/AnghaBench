
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct ExprList_item {int sortOrder; int pExpr; } ;
struct TYPE_12__ {int * pDfltColl; } ;
typedef TYPE_1__ sqlite3 ;
struct TYPE_15__ {int nExpr; struct ExprList_item* a; } ;
struct TYPE_14__ {int * aSortOrder; int ** aColl; } ;
struct TYPE_13__ {TYPE_1__* db; } ;
typedef TYPE_2__ Parse ;
typedef TYPE_3__ KeyInfo ;
typedef TYPE_4__ ExprList ;
typedef int CollSeq ;


 int assert (int ) ;
 int * sqlite3ExprCollSeq (TYPE_2__*,int ) ;
 TYPE_3__* sqlite3KeyInfoAlloc (TYPE_1__*,int,int) ;
 int sqlite3KeyInfoIsWriteable (TYPE_3__*) ;

__attribute__((used)) static KeyInfo *keyInfoFromExprList(
  Parse *pParse,
  ExprList *pList,
  int iStart,
  int nExtra
){
  int nExpr;
  KeyInfo *pInfo;
  struct ExprList_item *pItem;
  sqlite3 *db = pParse->db;
  int i;

  nExpr = pList->nExpr;
  pInfo = sqlite3KeyInfoAlloc(db, nExpr-iStart, nExtra+1);
  if( pInfo ){
    assert( sqlite3KeyInfoIsWriteable(pInfo) );
    for(i=iStart, pItem=pList->a+iStart; i<nExpr; i++, pItem++){
      CollSeq *pColl;
      pColl = sqlite3ExprCollSeq(pParse, pItem->pExpr);
      if( !pColl ) pColl = db->pDfltColl;
      pInfo->aColl[i-iStart] = pColl;
      pInfo->aSortOrder[i-iStart] = pItem->sortOrder;
    }
  }
  return pInfo;
}
