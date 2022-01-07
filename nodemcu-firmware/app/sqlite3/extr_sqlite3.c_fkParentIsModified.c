
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int nCol; int iPKey; TYPE_4__* aCol; } ;
typedef TYPE_2__ Table ;
struct TYPE_10__ {int colFlags; int zName; } ;
struct TYPE_9__ {int nCol; TYPE_1__* aCol; } ;
struct TYPE_7__ {char* zCol; } ;
typedef TYPE_3__ FKey ;
typedef TYPE_4__ Column ;


 int COLFLAG_PRIMKEY ;
 scalar_t__ sqlite3StrICmp (int ,char*) ;

__attribute__((used)) static int fkParentIsModified(
  Table *pTab,
  FKey *p,
  int *aChange,
  int bChngRowid
){
  int i;
  for(i=0; i<p->nCol; i++){
    char *zKey = p->aCol[i].zCol;
    int iKey;
    for(iKey=0; iKey<pTab->nCol; iKey++){
      if( aChange[iKey]>=0 || (iKey==pTab->iPKey && bChngRowid) ){
        Column *pCol = &pTab->aCol[iKey];
        if( zKey ){
          if( 0==sqlite3StrICmp(pCol->zName, zKey) ) return 1;
        }else if( pCol->colFlags & COLFLAG_PRIMKEY ){
          return 1;
        }
      }
    }
  }
  return 0;
}
