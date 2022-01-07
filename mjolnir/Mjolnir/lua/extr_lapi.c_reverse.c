
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int TValue ;
typedef scalar_t__ StkId ;


 int setobj (int *,int *,scalar_t__) ;
 int setobj2s (int *,scalar_t__,int *) ;
 int setobjs2s (int *,scalar_t__,scalar_t__) ;

__attribute__((used)) static void reverse (lua_State *L, StkId from, StkId to) {
  for (; from < to; from++, to--) {
    TValue temp;
    setobj(L, &temp, from);
    setobjs2s(L, from, to);
    setobj2s(L, to, &temp);
  }
}
