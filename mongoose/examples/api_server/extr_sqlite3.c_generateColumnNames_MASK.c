#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_9__ ;
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {int flags; scalar_t__ mallocFailed; } ;
typedef  TYPE_4__ sqlite3 ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_22__ {int iPKey; int nCol; int /*<<< orphan*/  zName; TYPE_2__* aCol; } ;
typedef  TYPE_5__ Table ;
struct TYPE_26__ {scalar_t__ op; int iColumn; scalar_t__ iTable; } ;
struct TYPE_25__ {int nExpr; TYPE_3__* a; } ;
struct TYPE_24__ {int colNamesSet; scalar_t__ explain; TYPE_4__* db; int /*<<< orphan*/ * pVdbe; } ;
struct TYPE_23__ {int nSrc; TYPE_1__* a; } ;
struct TYPE_20__ {char* zName; int /*<<< orphan*/  zSpan; TYPE_9__* pExpr; } ;
struct TYPE_19__ {char* zName; } ;
struct TYPE_18__ {scalar_t__ iCursor; TYPE_5__* pTab; } ;
typedef  TYPE_6__ SrcList ;
typedef  TYPE_7__ Parse ;
typedef  TYPE_8__ ExprList ;
typedef  TYPE_9__ Expr ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  COLNAME_NAME ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  SQLITE_DYNAMIC ; 
 int SQLITE_FullColNames ; 
 int SQLITE_ShortColNames ; 
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 scalar_t__ TK_AGG_COLUMN ; 
 scalar_t__ TK_COLUMN ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,TYPE_6__*,TYPE_8__*) ; 
 char* FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (TYPE_4__*,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC8(
  Parse *pParse,      /* Parser context */
  SrcList *pTabList,  /* List of tables */
  ExprList *pEList    /* Expressions defining the result set */
){
  Vdbe *v = pParse->pVdbe;
  int i, j;
  sqlite3 *db = pParse->db;
  int fullNames, shortNames;

#ifndef SQLITE_OMIT_EXPLAIN
  /* If this is an EXPLAIN, skip this step */
  if( pParse->explain ){
    return;
  }
#endif

  if( pParse->colNamesSet || FUNC1(v==0) || db->mallocFailed ) return;
  pParse->colNamesSet = 1;
  fullNames = (db->flags & SQLITE_FullColNames)!=0;
  shortNames = (db->flags & SQLITE_ShortColNames)!=0;
  FUNC7(v, pEList->nExpr);
  for(i=0; i<pEList->nExpr; i++){
    Expr *p;
    p = pEList->a[i].pExpr;
    if( FUNC1(p==0) ) continue;
    if( pEList->a[i].zName ){
      char *zName = pEList->a[i].zName;
      FUNC6(v, i, COLNAME_NAME, zName, SQLITE_TRANSIENT);
    }else if( (p->op==TK_COLUMN || p->op==TK_AGG_COLUMN) && pTabList ){
      Table *pTab;
      char *zCol;
      int iCol = p->iColumn;
      for(j=0; FUNC0(j<pTabList->nSrc); j++){
        if( pTabList->a[j].iCursor==p->iTable ) break;
      }
      FUNC2( j<pTabList->nSrc );
      pTab = pTabList->a[j].pTab;
      if( iCol<0 ) iCol = pTab->iPKey;
      FUNC2( iCol==-1 || (iCol>=0 && iCol<pTab->nCol) );
      if( iCol<0 ){
        zCol = "rowid";
      }else{
        zCol = pTab->aCol[iCol].zName;
      }
      if( !shortNames && !fullNames ){
        FUNC6(v, i, COLNAME_NAME, 
            FUNC4(db, pEList->a[i].zSpan), SQLITE_DYNAMIC);
      }else if( fullNames ){
        char *zName = 0;
        zName = FUNC5(db, "%s.%s", pTab->zName, zCol);
        FUNC6(v, i, COLNAME_NAME, zName, SQLITE_DYNAMIC);
      }else{
        FUNC6(v, i, COLNAME_NAME, zCol, SQLITE_TRANSIENT);
      }
    }else{
      FUNC6(v, i, COLNAME_NAME, 
          FUNC4(db, pEList->a[i].zSpan), SQLITE_DYNAMIC);
    }
  }
  FUNC3(pParse, pTabList, pEList);
}