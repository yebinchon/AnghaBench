
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nId; TYPE_1__* a; } ;
struct TYPE_4__ {int zName; } ;
typedef TYPE_2__ IdList ;


 scalar_t__ sqlite3StrICmp (int ,char const*) ;

__attribute__((used)) static int nameInUsingClause(IdList *pUsing, const char *zCol){
  if( pUsing ){
    int k;
    for(k=0; k<pUsing->nId; k++){
      if( sqlite3StrICmp(pUsing->a[k].zName, zCol)==0 ) return 1;
    }
  }
  return 0;
}
