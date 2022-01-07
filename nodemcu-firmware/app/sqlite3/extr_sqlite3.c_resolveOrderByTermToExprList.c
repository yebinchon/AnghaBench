
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_12__ {int suppressErr; } ;
typedef TYPE_2__ sqlite3 ;
typedef int nc ;
struct TYPE_16__ {int nExpr; TYPE_1__* a; } ;
struct TYPE_15__ {scalar_t__ nErr; int ncFlags; TYPE_6__* pEList; int pSrcList; TYPE_4__* pParse; } ;
struct TYPE_14__ {TYPE_2__* db; } ;
struct TYPE_13__ {int pSrc; TYPE_6__* pEList; } ;
struct TYPE_11__ {int pExpr; } ;
typedef TYPE_3__ Select ;
typedef TYPE_4__ Parse ;
typedef TYPE_5__ NameContext ;
typedef TYPE_6__ ExprList ;
typedef int Expr ;


 int NC_AllowAgg ;
 int assert (int) ;
 int memset (TYPE_5__*,int ,int) ;
 int sqlite3ExprCompare (int ,int *,int) ;
 scalar_t__ sqlite3ExprIsInteger (int *,int*) ;
 int sqlite3ResolveExprNames (TYPE_5__*,int *) ;

__attribute__((used)) static int resolveOrderByTermToExprList(
  Parse *pParse,
  Select *pSelect,
  Expr *pE
){
  int i;
  ExprList *pEList;
  NameContext nc;
  sqlite3 *db;
  int rc;
  u8 savedSuppErr;

  assert( sqlite3ExprIsInteger(pE, &i)==0 );
  pEList = pSelect->pEList;



  memset(&nc, 0, sizeof(nc));
  nc.pParse = pParse;
  nc.pSrcList = pSelect->pSrc;
  nc.pEList = pEList;
  nc.ncFlags = NC_AllowAgg;
  nc.nErr = 0;
  db = pParse->db;
  savedSuppErr = db->suppressErr;
  db->suppressErr = 1;
  rc = sqlite3ResolveExprNames(&nc, pE);
  db->suppressErr = savedSuppErr;
  if( rc ) return 0;





  for(i=0; i<pEList->nExpr; i++){
    if( sqlite3ExprCompare(pEList->a[i].pExpr, pE, -1)<2 ){
      return i+1;
    }
  }


  return 0;
}
