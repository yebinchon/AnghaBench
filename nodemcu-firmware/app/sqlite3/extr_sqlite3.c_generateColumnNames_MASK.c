#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int flags; scalar_t__ mallocFailed; } ;
typedef  TYPE_3__ sqlite3 ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_18__ {int iPKey; int nCol; int /*<<< orphan*/  zName; TYPE_1__* aCol; } ;
typedef  TYPE_4__ Table ;
struct TYPE_21__ {scalar_t__ op; int iColumn; int /*<<< orphan*/  iTable; } ;
struct TYPE_20__ {int nExpr; TYPE_2__* a; } ;
struct TYPE_19__ {int colNamesSet; scalar_t__ explain; TYPE_3__* db; int /*<<< orphan*/ * pVdbe; } ;
struct TYPE_16__ {char* zName; char const* zSpan; TYPE_7__* pExpr; } ;
struct TYPE_15__ {char* zName; } ;
typedef  int /*<<< orphan*/  SrcList ;
typedef  TYPE_5__ Parse ;
typedef  TYPE_6__ ExprList ;
typedef  TYPE_7__ Expr ;

/* Variables and functions */
 int /*<<< orphan*/  COLNAME_NAME ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  SQLITE_DYNAMIC ; 
 int SQLITE_FullColNames ; 
 int SQLITE_ShortColNames ; 
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 scalar_t__ TK_AGG_COLUMN ; 
 scalar_t__ TK_COLUMN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ *,TYPE_6__*) ; 
 char const* FUNC3 (TYPE_3__*,char const*) ; 
 char const* FUNC4 (TYPE_3__*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 TYPE_4__* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(
  Parse *pParse,      /* Parser context */
  SrcList *pTabList,  /* List of tables */
  ExprList *pEList    /* Expressions defining the result set */
){
  Vdbe *v = pParse->pVdbe;
  int i;
  Table *pTab;
  sqlite3 *db = pParse->db;
  int fullNames, shortNames;

#ifndef SQLITE_OMIT_EXPLAIN
  /* If this is an EXPLAIN, skip this step */
  if( pParse->explain ){
    return;
  }
#endif

  if( pParse->colNamesSet || db->mallocFailed ) return;
  FUNC1( v!=0 );
  FUNC1( pTabList!=0 );
  pParse->colNamesSet = 1;
  fullNames = (db->flags & SQLITE_FullColNames)!=0;
  shortNames = (db->flags & SQLITE_ShortColNames)!=0;
  FUNC6(v, pEList->nExpr);
  for(i=0; i<pEList->nExpr; i++){
    Expr *p;
    p = pEList->a[i].pExpr;
    if( FUNC0(p==0) ) continue;
    if( pEList->a[i].zName ){
      char *zName = pEList->a[i].zName;
      FUNC5(v, i, COLNAME_NAME, zName, SQLITE_TRANSIENT);
    }else if( (p->op==TK_COLUMN || p->op==TK_AGG_COLUMN)
           && (pTab = FUNC7(pTabList, p->iTable))!=0
    ){
      char *zCol;
      int iCol = p->iColumn;
      if( iCol<0 ) iCol = pTab->iPKey;
      FUNC1( iCol==-1 || (iCol>=0 && iCol<pTab->nCol) );
      if( iCol<0 ){
        zCol = "rowid";
      }else{
        zCol = pTab->aCol[iCol].zName;
      }
      if( !shortNames && !fullNames ){
        FUNC5(v, i, COLNAME_NAME,
            FUNC3(db, pEList->a[i].zSpan), SQLITE_DYNAMIC);
      }else if( fullNames ){
        char *zName = 0;
        zName = FUNC4(db, "%s.%s", pTab->zName, zCol);
        FUNC5(v, i, COLNAME_NAME, zName, SQLITE_DYNAMIC);
      }else{
        FUNC5(v, i, COLNAME_NAME, zCol, SQLITE_TRANSIENT);
      }
    }else{
      const char *z = pEList->a[i].zSpan;
      z = z==0 ? FUNC4(db, "column%d", i+1) : FUNC3(db, z);
      FUNC5(v, i, COLNAME_NAME, z, SQLITE_DYNAMIC);
    }
  }
  FUNC2(pParse, pTabList, pEList);
}