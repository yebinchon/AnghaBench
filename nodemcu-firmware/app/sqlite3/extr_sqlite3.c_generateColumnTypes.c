
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int Vdbe ;
struct TYPE_11__ {int nExpr; TYPE_1__* a; } ;
struct TYPE_10__ {scalar_t__ pNext; TYPE_2__* pParse; int * pSrcList; } ;
struct TYPE_9__ {int * pVdbe; } ;
struct TYPE_8__ {int * pExpr; } ;
typedef int SrcList ;
typedef TYPE_2__ Parse ;
typedef TYPE_3__ NameContext ;
typedef TYPE_4__ ExprList ;
typedef int Expr ;


 int COLNAME_COLUMN ;
 int COLNAME_DATABASE ;
 int COLNAME_DECLTYPE ;
 int COLNAME_TABLE ;
 int SQLITE_TRANSIENT ;
 char* columnType (TYPE_3__*,int *,char const**,char const**,char const**,int ) ;
 int sqlite3VdbeSetColName (int *,int,int ,char const*,int ) ;

__attribute__((used)) static void generateColumnTypes(
  Parse *pParse,
  SrcList *pTabList,
  ExprList *pEList
){

  Vdbe *v = pParse->pVdbe;
  int i;
  NameContext sNC;
  sNC.pSrcList = pTabList;
  sNC.pParse = pParse;
  sNC.pNext = 0;
  for(i=0; i<pEList->nExpr; i++){
    Expr *p = pEList->a[i].pExpr;
    const char *zType;
    zType = columnType(&sNC, p, 0, 0, 0, 0);

    sqlite3VdbeSetColName(v, i, COLNAME_DECLTYPE, zType, SQLITE_TRANSIENT);
  }

}
