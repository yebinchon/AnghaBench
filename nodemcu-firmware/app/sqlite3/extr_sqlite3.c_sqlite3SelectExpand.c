
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int w ;
struct TYPE_6__ {int xSelectCallback2; int xSelectCallback; TYPE_2__* pParse; int xExprCallback; } ;
typedef TYPE_1__ Walker ;
struct TYPE_7__ {scalar_t__ hasCompound; } ;
typedef int Select ;
typedef TYPE_2__ Parse ;


 int convertCompoundSelectToSubquery ;
 int memset (TYPE_1__*,int ,int) ;
 int selectExpander ;
 int selectPopWith ;
 int sqlite3ExprWalkNoop ;
 int sqlite3WalkSelect (TYPE_1__*,int *) ;

__attribute__((used)) static void sqlite3SelectExpand(Parse *pParse, Select *pSelect){
  Walker w;
  memset(&w, 0, sizeof(w));
  w.xExprCallback = sqlite3ExprWalkNoop;
  w.pParse = pParse;
  if( pParse->hasCompound ){
    w.xSelectCallback = convertCompoundSelectToSubquery;
    sqlite3WalkSelect(&w, pSelect);
  }
  w.xSelectCallback = selectExpander;
  w.xSelectCallback2 = selectPopWith;
  sqlite3WalkSelect(&w, pSelect);
}
