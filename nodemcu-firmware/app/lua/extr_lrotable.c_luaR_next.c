
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int TValue ;
typedef int ROTable ;


 int luaR_findentry (int *,int ,unsigned int*) ;
 int luaR_next_helper (int *,int *,unsigned int,int *,int *) ;
 int rawtsvalue (int *) ;
 scalar_t__ ttisnil (int *) ;
 scalar_t__ ttisstring (int *) ;

void luaR_next(lua_State *L, ROTable *rotable, TValue *key, TValue *val) {
  unsigned keypos;


  if (ttisnil(key))
    luaR_next_helper(L, rotable, 0, key, val);
  else if (ttisstring(key)) {

    if (ttisstring(key)) {
      luaR_findentry(rotable, rawtsvalue(key), &keypos);
    }

    keypos ++;
    luaR_next_helper(L, rotable, keypos, key, val);
  }
}
