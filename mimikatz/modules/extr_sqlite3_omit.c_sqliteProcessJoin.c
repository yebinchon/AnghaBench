
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {int jointype; } ;
struct SrcList_item {scalar_t__ pTab; TYPE_8__* pUsing; scalar_t__ pOn; int iCursor; TYPE_1__ fg; } ;
struct TYPE_19__ {int nCol; TYPE_2__* aCol; } ;
typedef TYPE_4__ Table ;
struct TYPE_23__ {int nId; TYPE_3__* a; } ;
struct TYPE_22__ {int db; } ;
struct TYPE_21__ {int pWhere; TYPE_5__* pSrc; } ;
struct TYPE_20__ {int nSrc; struct SrcList_item* a; } ;
struct TYPE_18__ {char* zName; } ;
struct TYPE_17__ {char* zName; } ;
typedef TYPE_5__ SrcList ;
typedef TYPE_6__ Select ;
typedef TYPE_7__ Parse ;
typedef TYPE_8__ IdList ;


 int JT_NATURAL ;
 int JT_OUTER ;
 scalar_t__ NEVER (int) ;
 int addWhereTerm (TYPE_7__*,TYPE_5__*,int,int,int,int,int,int *) ;
 int columnIndex (TYPE_4__*,char*) ;
 int setJoinExpr (scalar_t__,int ) ;
 int sqlite3ErrorMsg (TYPE_7__*,char*,...) ;
 int sqlite3ExprAnd (int ,int ,scalar_t__) ;
 scalar_t__ tableAndColumnIndex (TYPE_5__*,int,char*,int*,int*) ;

__attribute__((used)) static int sqliteProcessJoin(Parse *pParse, Select *p){
  SrcList *pSrc;
  int i, j;
  struct SrcList_item *pLeft;
  struct SrcList_item *pRight;

  pSrc = p->pSrc;
  pLeft = &pSrc->a[0];
  pRight = &pLeft[1];
  for(i=0; i<pSrc->nSrc-1; i++, pRight++, pLeft++){
    Table *pRightTab = pRight->pTab;
    int isOuter;

    if( NEVER(pLeft->pTab==0 || pRightTab==0) ) continue;
    isOuter = (pRight->fg.jointype & JT_OUTER)!=0;




    if( pRight->fg.jointype & JT_NATURAL ){
      if( pRight->pOn || pRight->pUsing ){
        sqlite3ErrorMsg(pParse, "a NATURAL join may not have "
           "an ON or USING clause", 0);
        return 1;
      }
      for(j=0; j<pRightTab->nCol; j++){
        char *zName;
        int iLeft;
        int iLeftCol;

        zName = pRightTab->aCol[j].zName;
        if( tableAndColumnIndex(pSrc, i+1, zName, &iLeft, &iLeftCol) ){
          addWhereTerm(pParse, pSrc, iLeft, iLeftCol, i+1, j,
                       isOuter, &p->pWhere);
        }
      }
    }



    if( pRight->pOn && pRight->pUsing ){
      sqlite3ErrorMsg(pParse, "cannot have both ON and USING "
        "clauses in the same join");
      return 1;
    }




    if( pRight->pOn ){
      if( isOuter ) setJoinExpr(pRight->pOn, pRight->iCursor);
      p->pWhere = sqlite3ExprAnd(pParse->db, p->pWhere, pRight->pOn);
      pRight->pOn = 0;
    }
    if( pRight->pUsing ){
      IdList *pList = pRight->pUsing;
      for(j=0; j<pList->nId; j++){
        char *zName;
        int iLeft;
        int iLeftCol;
        int iRightCol;

        zName = pList->a[j].zName;
        iRightCol = columnIndex(pRightTab, zName);
        if( iRightCol<0
         || !tableAndColumnIndex(pSrc, i+1, zName, &iLeft, &iLeftCol)
        ){
          sqlite3ErrorMsg(pParse, "cannot join using column %s - column "
            "not present in both tables", zName);
          return 1;
        }
        addWhereTerm(pParse, pSrc, iLeft, iLeftCol, i+1, iRightCol,
                     isOuter, &p->pWhere);
      }
    }
  }
  return 0;
}
