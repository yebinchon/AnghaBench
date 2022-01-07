
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int * pParse; } ;
typedef TYPE_2__ Walker ;
struct TYPE_12__ {TYPE_3__* pSrc; TYPE_3__* pEList; } ;
struct TYPE_11__ {int nExpr; int nSrc; TYPE_1__* a; } ;
struct TYPE_9__ {scalar_t__ zName; } ;
typedef TYPE_3__ SrcList ;
typedef TYPE_4__ Select ;
typedef int Parse ;
typedef TYPE_3__ ExprList ;


 scalar_t__ ALWAYS (TYPE_3__*) ;
 int WRC_Continue ;
 int sqlite3RenameTokenRemap (int *,int ,void*) ;

__attribute__((used)) static int renameUnmapSelectCb(Walker *pWalker, Select *p){
  Parse *pParse = pWalker->pParse;
  int i;
  if( ALWAYS(p->pEList) ){
    ExprList *pList = p->pEList;
    for(i=0; i<pList->nExpr; i++){
      if( pList->a[i].zName ){
        sqlite3RenameTokenRemap(pParse, 0, (void*)pList->a[i].zName);
      }
    }
  }
  if( ALWAYS(p->pSrc) ){
    SrcList *pSrc = p->pSrc;
    for(i=0; i<pSrc->nSrc; i++){
      sqlite3RenameTokenRemap(pParse, 0, (void*)pSrc->a[i].zName);
    }
  }
  return WRC_Continue;
}
