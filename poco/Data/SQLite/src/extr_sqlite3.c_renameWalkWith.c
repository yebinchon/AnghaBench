
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int sNC ;
struct TYPE_15__ {int pParse; } ;
typedef TYPE_3__ Walker ;
struct TYPE_17__ {int pParse; } ;
struct TYPE_16__ {TYPE_1__* pWith; } ;
struct TYPE_14__ {TYPE_4__* pSelect; } ;
struct TYPE_13__ {int nCte; TYPE_2__* a; } ;
typedef TYPE_4__ Select ;
typedef TYPE_5__ NameContext ;


 int memset (TYPE_5__*,int ,int) ;
 int sqlite3SelectPrep (int ,TYPE_4__*,TYPE_5__*) ;
 int sqlite3WalkSelect (TYPE_3__*,TYPE_4__*) ;

__attribute__((used)) static void renameWalkWith(Walker *pWalker, Select *pSelect){
  if( pSelect->pWith ){
    int i;
    for(i=0; i<pSelect->pWith->nCte; i++){
      Select *p = pSelect->pWith->a[i].pSelect;
      NameContext sNC;
      memset(&sNC, 0, sizeof(sNC));
      sNC.pParse = pWalker->pParse;
      sqlite3SelectPrep(sNC.pParse, p, &sNC);
      sqlite3WalkSelect(pWalker, p);
    }
  }
}
