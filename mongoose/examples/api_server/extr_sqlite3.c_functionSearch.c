
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__* zName; struct TYPE_6__* pHash; } ;
struct TYPE_5__ {TYPE_2__** a; } ;
typedef TYPE_1__ FuncDefHash ;
typedef TYPE_2__ FuncDef ;


 scalar_t__ sqlite3StrNICmp (scalar_t__*,char const*,int) ;

__attribute__((used)) static FuncDef *functionSearch(
  FuncDefHash *pHash,
  int h,
  const char *zFunc,
  int nFunc
){
  FuncDef *p;
  for(p=pHash->a[h]; p; p=p->pHash){
    if( sqlite3StrNICmp(p->zName, zFunc, nFunc)==0 && p->zName[nFunc]==0 ){
      return p;
    }
  }
  return 0;
}
