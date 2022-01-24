#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int jointype; } ;
struct SrcList_item {TYPE_8__* pUsing; scalar_t__ pOn; int /*<<< orphan*/  iCursor; TYPE_1__ fg; TYPE_4__* pTab; } ;
struct TYPE_19__ {int nCol; TYPE_2__* aCol; } ;
typedef  TYPE_4__ Table ;
struct TYPE_23__ {int nId; TYPE_3__* a; } ;
struct TYPE_22__ {int /*<<< orphan*/  db; } ;
struct TYPE_21__ {int /*<<< orphan*/  pWhere; TYPE_5__* pSrc; } ;
struct TYPE_20__ {int nSrc; struct SrcList_item* a; } ;
struct TYPE_18__ {char* zName; } ;
struct TYPE_17__ {char* zName; } ;
typedef  TYPE_5__ SrcList ;
typedef  TYPE_6__ Select ;
typedef  TYPE_7__ Parse ;
typedef  TYPE_8__ IdList ;

/* Variables and functions */
 int JT_NATURAL ; 
 int JT_OUTER ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*,TYPE_5__*,int,int,int,int,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (TYPE_5__*,int,char*,int*,int*) ; 

__attribute__((used)) static int FUNC7(Parse *pParse, Select *p){
  SrcList *pSrc;                  /* All tables in the FROM clause */
  int i, j;                       /* Loop counters */
  struct SrcList_item *pLeft;     /* Left table being joined */
  struct SrcList_item *pRight;    /* Right table being joined */

  pSrc = p->pSrc;
  pLeft = &pSrc->a[0];
  pRight = &pLeft[1];
  for(i=0; i<pSrc->nSrc-1; i++, pRight++, pLeft++){
    Table *pLeftTab = pLeft->pTab;
    Table *pRightTab = pRight->pTab;
    int isOuter;

    if( FUNC0(pLeftTab==0 || pRightTab==0) ) continue;
    isOuter = (pRight->fg.jointype & JT_OUTER)!=0;

    /* When the NATURAL keyword is present, add WHERE clause terms for
    ** every column that the two tables have in common.
    */
    if( pRight->fg.jointype & JT_NATURAL ){
      if( pRight->pOn || pRight->pUsing ){
        FUNC4(pParse, "a NATURAL join may not have "
           "an ON or USING clause", 0);
        return 1;
      }
      for(j=0; j<pRightTab->nCol; j++){
        char *zName;   /* Name of column in the right table */
        int iLeft;     /* Matching left table */
        int iLeftCol;  /* Matching column in the left table */

        zName = pRightTab->aCol[j].zName;
        if( FUNC6(pSrc, i+1, zName, &iLeft, &iLeftCol) ){
          FUNC1(pParse, pSrc, iLeft, iLeftCol, i+1, j,
                       isOuter, &p->pWhere);
        }
      }
    }

    /* Disallow both ON and USING clauses in the same join
    */
    if( pRight->pOn && pRight->pUsing ){
      FUNC4(pParse, "cannot have both ON and USING "
        "clauses in the same join");
      return 1;
    }

    /* Add the ON clause to the end of the WHERE clause, connected by
    ** an AND operator.
    */
    if( pRight->pOn ){
      if( isOuter ) FUNC3(pRight->pOn, pRight->iCursor);
      p->pWhere = FUNC5(pParse->db, p->pWhere, pRight->pOn);
      pRight->pOn = 0;
    }

    /* Create extra terms on the WHERE clause for each column named
    ** in the USING clause.  Example: If the two tables to be joined are
    ** A and B and the USING clause names X, Y, and Z, then add this
    ** to the WHERE clause:    A.X=B.X AND A.Y=B.Y AND A.Z=B.Z
    ** Report an error if any column mentioned in the USING clause is
    ** not contained in both tables to be joined.
    */
    if( pRight->pUsing ){
      IdList *pList = pRight->pUsing;
      for(j=0; j<pList->nId; j++){
        char *zName;     /* Name of the term in the USING clause */
        int iLeft;       /* Table on the left with matching column name */
        int iLeftCol;    /* Column number of matching column on the left */
        int iRightCol;   /* Column number of matching column on the right */

        zName = pList->a[j].zName;
        iRightCol = FUNC2(pRightTab, zName);
        if( iRightCol<0
         || !FUNC6(pSrc, i+1, zName, &iLeft, &iLeftCol)
        ){
          FUNC4(pParse, "cannot join using column %s - column "
            "not present in both tables", zName);
          return 1;
        }
        FUNC1(pParse, pSrc, iLeft, iLeftCol, i+1, iRightCol,
                     isOuter, &p->pWhere);
      }
    }
  }
  return 0;
}