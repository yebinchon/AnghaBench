
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_17__ {int flags; scalar_t__ mallocFailed; } ;
typedef TYPE_3__ sqlite3 ;
typedef int Vdbe ;
struct TYPE_18__ {int iPKey; int nCol; int zName; TYPE_1__* aCol; } ;
typedef TYPE_4__ Table ;
struct TYPE_21__ {scalar_t__ op; int iColumn; int iTable; } ;
struct TYPE_20__ {int nExpr; TYPE_2__* a; } ;
struct TYPE_19__ {int colNamesSet; scalar_t__ explain; TYPE_3__* db; int * pVdbe; } ;
struct TYPE_16__ {char* zName; char const* zSpan; TYPE_7__* pExpr; } ;
struct TYPE_15__ {char* zName; } ;
typedef int SrcList ;
typedef TYPE_5__ Parse ;
typedef TYPE_6__ ExprList ;
typedef TYPE_7__ Expr ;


 int COLNAME_NAME ;
 scalar_t__ NEVER (int) ;
 int SQLITE_DYNAMIC ;
 int SQLITE_FullColNames ;
 int SQLITE_ShortColNames ;
 int SQLITE_TRANSIENT ;
 scalar_t__ TK_AGG_COLUMN ;
 scalar_t__ TK_COLUMN ;
 int assert (int) ;
 int generateColumnTypes (TYPE_5__*,int *,TYPE_6__*) ;
 char const* sqlite3DbStrDup (TYPE_3__*,char const*) ;
 char const* sqlite3MPrintf (TYPE_3__*,char*,int,...) ;
 int sqlite3VdbeSetColName (int *,int,int ,char const*,int ) ;
 int sqlite3VdbeSetNumCols (int *,int) ;
 TYPE_4__* tableWithCursor (int *,int ) ;

__attribute__((used)) static void generateColumnNames(
  Parse *pParse,
  SrcList *pTabList,
  ExprList *pEList
){
  Vdbe *v = pParse->pVdbe;
  int i;
  Table *pTab;
  sqlite3 *db = pParse->db;
  int fullNames, shortNames;



  if( pParse->explain ){
    return;
  }


  if( pParse->colNamesSet || db->mallocFailed ) return;
  assert( v!=0 );
  assert( pTabList!=0 );
  pParse->colNamesSet = 1;
  fullNames = (db->flags & SQLITE_FullColNames)!=0;
  shortNames = (db->flags & SQLITE_ShortColNames)!=0;
  sqlite3VdbeSetNumCols(v, pEList->nExpr);
  for(i=0; i<pEList->nExpr; i++){
    Expr *p;
    p = pEList->a[i].pExpr;
    if( NEVER(p==0) ) continue;
    if( pEList->a[i].zName ){
      char *zName = pEList->a[i].zName;
      sqlite3VdbeSetColName(v, i, COLNAME_NAME, zName, SQLITE_TRANSIENT);
    }else if( (p->op==TK_COLUMN || p->op==TK_AGG_COLUMN)
           && (pTab = tableWithCursor(pTabList, p->iTable))!=0
    ){
      char *zCol;
      int iCol = p->iColumn;
      if( iCol<0 ) iCol = pTab->iPKey;
      assert( iCol==-1 || (iCol>=0 && iCol<pTab->nCol) );
      if( iCol<0 ){
        zCol = "rowid";
      }else{
        zCol = pTab->aCol[iCol].zName;
      }
      if( !shortNames && !fullNames ){
        sqlite3VdbeSetColName(v, i, COLNAME_NAME,
            sqlite3DbStrDup(db, pEList->a[i].zSpan), SQLITE_DYNAMIC);
      }else if( fullNames ){
        char *zName = 0;
        zName = sqlite3MPrintf(db, "%s.%s", pTab->zName, zCol);
        sqlite3VdbeSetColName(v, i, COLNAME_NAME, zName, SQLITE_DYNAMIC);
      }else{
        sqlite3VdbeSetColName(v, i, COLNAME_NAME, zCol, SQLITE_TRANSIENT);
      }
    }else{
      const char *z = pEList->a[i].zSpan;
      z = z==0 ? sqlite3MPrintf(db, "column%d", i+1) : sqlite3DbStrDup(db, z);
      sqlite3VdbeSetColName(v, i, COLNAME_NAME, z, SQLITE_DYNAMIC);
    }
  }
  generateColumnTypes(pParse, pTabList, pEList);
}
