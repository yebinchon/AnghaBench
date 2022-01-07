
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct SrcList_item {scalar_t__ zDatabase; char* zName; } ;
struct Cte {int zName; } ;
struct TYPE_4__ {int nCte; struct Cte* a; struct TYPE_4__* pOuter; } ;
typedef TYPE_1__ With ;


 scalar_t__ sqlite3StrICmp (char const*,int ) ;

__attribute__((used)) static struct Cte *searchWith(
  With *pWith,
  struct SrcList_item *pItem,
  With **ppContext
){
  const char *zName;
  if( pItem->zDatabase==0 && (zName = pItem->zName)!=0 ){
    With *p;
    for(p=pWith; p; p=p->pOuter){
      int i;
      for(i=0; i<p->nCte; i++){
        if( sqlite3StrICmp(zName, p->a[i].zName)==0 ){
          *ppContext = p;
          return &p->a[i];
        }
      }
    }
  }
  return 0;
}
