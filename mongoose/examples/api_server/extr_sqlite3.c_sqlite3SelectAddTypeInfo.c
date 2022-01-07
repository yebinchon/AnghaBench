
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int w ;
struct TYPE_4__ {int bSelectDepthFirst; int * pParse; int xExprCallback; int xSelectCallback; } ;
typedef TYPE_1__ Walker ;
typedef int Select ;
typedef int Parse ;


 int exprWalkNoop ;
 int memset (TYPE_1__*,int ,int) ;
 int selectAddSubqueryTypeInfo ;
 int sqlite3WalkSelect (TYPE_1__*,int *) ;

__attribute__((used)) static void sqlite3SelectAddTypeInfo(Parse *pParse, Select *pSelect){

  Walker w;
  memset(&w, 0, sizeof(w));
  w.xSelectCallback = selectAddSubqueryTypeInfo;
  w.xExprCallback = exprWalkNoop;
  w.pParse = pParse;
  w.bSelectDepthFirst = 1;
  sqlite3WalkSelect(&w, pSelect);

}
