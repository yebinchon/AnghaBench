
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int value; scalar_t__ key; } ;
typedef int TValue ;
typedef TYPE_1__ ROTable ;


 int luaS_new (int *,scalar_t__) ;
 int setnilvalue (int *) ;
 int setobj2s (int *,int *,int *) ;
 int setsvalue (int *,int *,int ) ;

__attribute__((used)) static void luaR_next_helper(lua_State *L, ROTable *pentries, int pos,
                             TValue *key, TValue *val) {
  if (pentries[pos].key) {

    setsvalue(L, key, luaS_new(L, pentries[pos].key));
    setobj2s(L, val, &pentries[pos].value);
  } else {
    setnilvalue(key);
    setnilvalue(val);
  }
}
