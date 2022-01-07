
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_14__ {int suppressErr; } ;
typedef TYPE_3__ sqlite3 ;
typedef int nc ;
struct TYPE_18__ {int nExpr; TYPE_2__* a; } ;
struct TYPE_12__ {TYPE_7__* pEList; } ;
struct TYPE_17__ {int ncFlags; scalar_t__ nErr; TYPE_1__ uNC; int pSrcList; TYPE_5__* pParse; } ;
struct TYPE_16__ {TYPE_3__* db; } ;
struct TYPE_15__ {int pSrc; TYPE_7__* pEList; } ;
struct TYPE_13__ {int pExpr; } ;
typedef TYPE_4__ Select ;
typedef TYPE_5__ Parse ;
typedef TYPE_6__ NameContext ;
typedef TYPE_7__ ExprList ;
typedef int Expr ;


 int NC_AllowAgg ;
 int NC_UEList ;
 int assert (int) ;
 int memset (TYPE_6__*,int ,int) ;
 int sqlite3ExprCompare (int ,int ,int *,int) ;
 scalar_t__ sqlite3ExprIsInteger (int *,int*) ;
 int sqlite3ResolveExprNames (TYPE_6__*,int *) ;

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
  nc.uNC.pEList = pEList;
  nc.ncFlags = NC_AllowAgg|NC_UEList;
  nc.nErr = 0;
  db = pParse->db;
  savedSuppErr = db->suppressErr;
  db->suppressErr = 1;
  rc = sqlite3ResolveExprNames(&nc, pE);
  db->suppressErr = savedSuppErr;
  if( rc ) return 0;





  for(i=0; i<pEList->nExpr; i++){
    if( sqlite3ExprCompare(0, pEList->a[i].pExpr, pE, -1)<2 ){
      return i+1;
    }
  }


  return 0;
}
