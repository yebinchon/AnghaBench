
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nCol; scalar_t__ iPKey; int szTabRow; TYPE_2__* aCol; } ;
typedef TYPE_1__ Table ;
struct TYPE_5__ {scalar_t__ szEst; } ;
typedef TYPE_2__ Column ;


 int sqlite3LogEst (unsigned int) ;

__attribute__((used)) static void estimateTableWidth(Table *pTab){
  unsigned wTable = 0;
  const Column *pTabCol;
  int i;
  for(i=pTab->nCol, pTabCol=pTab->aCol; i>0; i--, pTabCol++){
    wTable += pTabCol->szEst;
  }
  if( pTab->iPKey<0 ) wTable++;
  pTab->szTabRow = sqlite3LogEst(wTable*4);
}
