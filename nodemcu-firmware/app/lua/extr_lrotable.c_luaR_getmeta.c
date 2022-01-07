
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TValue ;
typedef int ROTable ;


 int * luaR_findentry (int *,int *,int *) ;
 void* rvalue (int const*) ;
 scalar_t__ ttisrotable (int const*) ;

void* luaR_getmeta(ROTable *rotable) {
  const TValue *res = luaR_findentry(rotable, ((void*)0), ((void*)0));
  return res && ttisrotable(res) ? rvalue(res) : ((void*)0);
}
