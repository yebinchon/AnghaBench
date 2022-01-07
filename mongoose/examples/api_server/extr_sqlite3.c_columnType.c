
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_9__ ;
typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_13__ ;
typedef struct TYPE_19__ TYPE_12__ ;
typedef struct TYPE_18__ TYPE_11__ ;
typedef struct TYPE_17__ TYPE_10__ ;


struct TYPE_28__ {int pSchema; int iPKey; int nCol; char* zName; TYPE_2__* aCol; } ;
typedef TYPE_8__ Table ;
struct TYPE_29__ {int nSrc; TYPE_1__* a; } ;
struct TYPE_27__ {TYPE_13__* db; } ;
struct TYPE_26__ {int nExpr; TYPE_5__* a; } ;
struct TYPE_25__ {TYPE_12__* pExpr; } ;
struct TYPE_24__ {TYPE_10__* pSelect; } ;
struct TYPE_23__ {char* zName; } ;
struct TYPE_22__ {char* zType; char* zName; } ;
struct TYPE_21__ {TYPE_10__* pSelect; TYPE_8__* pTab; int iCursor; } ;
struct TYPE_20__ {TYPE_3__* aDb; } ;
struct TYPE_19__ {int op; int iColumn; TYPE_4__ x; TYPE_8__* pTab; int iTable; } ;
struct TYPE_18__ {scalar_t__ pSrcList; TYPE_7__* pParse; struct TYPE_18__* pNext; } ;
struct TYPE_17__ {TYPE_9__* pSrc; TYPE_6__* pEList; } ;
typedef TYPE_9__ SrcList ;
typedef TYPE_10__ Select ;
typedef TYPE_11__ NameContext ;
typedef TYPE_12__ Expr ;


 int ALWAYS (int) ;
 int EP_xIsSelect ;
 int ExprHasProperty (TYPE_12__*,int ) ;
 scalar_t__ NEVER (int) ;



 int assert (int) ;
 int sqlite3SchemaToIndex (TYPE_13__*,int) ;
 int testcase (int) ;

__attribute__((used)) static const char *columnType(
  NameContext *pNC,
  Expr *pExpr,
  const char **pzOriginDb,
  const char **pzOriginTab,
  const char **pzOriginCol
){
  char const *zType = 0;
  char const *zOriginDb = 0;
  char const *zOriginTab = 0;
  char const *zOriginCol = 0;
  int j;
  if( NEVER(pExpr==0) || pNC->pSrcList==0 ) return 0;

  switch( pExpr->op ){
    case 130:
    case 129: {




      Table *pTab = 0;
      Select *pS = 0;
      int iCol = pExpr->iColumn;
      testcase( pExpr->op==130 );
      testcase( pExpr->op==129 );
      while( pNC && !pTab ){
        SrcList *pTabList = pNC->pSrcList;
        for(j=0;j<pTabList->nSrc && pTabList->a[j].iCursor!=pExpr->iTable;j++);
        if( j<pTabList->nSrc ){
          pTab = pTabList->a[j].pTab;
          pS = pTabList->a[j].pSelect;
        }else{
          pNC = pNC->pNext;
        }
      }

      if( pTab==0 ){
        break;
      }

      assert( pTab && pExpr->pTab==pTab );
      if( pS ){




        if( iCol>=0 && ALWAYS(iCol<pS->pEList->nExpr) ){




          NameContext sNC;
          Expr *p = pS->pEList->a[iCol].pExpr;
          sNC.pSrcList = pS->pSrc;
          sNC.pNext = pNC;
          sNC.pParse = pNC->pParse;
          zType = columnType(&sNC, p, &zOriginDb, &zOriginTab, &zOriginCol);
        }
      }else if( ALWAYS(pTab->pSchema) ){

        assert( !pS );
        if( iCol<0 ) iCol = pTab->iPKey;
        assert( iCol==-1 || (iCol>=0 && iCol<pTab->nCol) );
        if( iCol<0 ){
          zType = "INTEGER";
          zOriginCol = "rowid";
        }else{
          zType = pTab->aCol[iCol].zType;
          zOriginCol = pTab->aCol[iCol].zName;
        }
        zOriginTab = pTab->zName;
        if( pNC->pParse ){
          int iDb = sqlite3SchemaToIndex(pNC->pParse->db, pTab->pSchema);
          zOriginDb = pNC->pParse->db->aDb[iDb].zName;
        }
      }
      break;
    }

    case 128: {




      NameContext sNC;
      Select *pS = pExpr->x.pSelect;
      Expr *p = pS->pEList->a[0].pExpr;
      assert( ExprHasProperty(pExpr, EP_xIsSelect) );
      sNC.pSrcList = pS->pSrc;
      sNC.pNext = pNC;
      sNC.pParse = pNC->pParse;
      zType = columnType(&sNC, p, &zOriginDb, &zOriginTab, &zOriginCol);
      break;
    }

  }

  if( pzOriginDb ){
    assert( pzOriginTab && pzOriginCol );
    *pzOriginDb = zOriginDb;
    *pzOriginTab = zOriginTab;
    *pzOriginCol = zOriginCol;
  }
  return zType;
}
