
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flags; } ;
typedef TYPE_1__ Table ;
typedef int TValue ;
typedef int TString ;
typedef unsigned int TMS ;


 unsigned int TM_EQ ;
 int cast_byte (unsigned int) ;
 int * luaH_getstr (TYPE_1__*,int *) ;
 int * luaH_getstr_ro (TYPE_1__*,int *) ;
 scalar_t__ luaR_isrotable (TYPE_1__*) ;
 int lua_assert (int) ;
 scalar_t__ ttisnil (int const*) ;

const TValue *luaT_gettm (Table *events, TMS event, TString *ename) {
  const TValue *tm;
  lua_assert(event <= TM_EQ);

  if (luaR_isrotable(events)) {
    tm = luaH_getstr_ro(events, ename);
    if (ttisnil(tm)) {
      return ((void*)0);
    }
  } else {
    tm = luaH_getstr(events, ename);
    if (ttisnil(tm)) {
      events->flags |= cast_byte(1u<<event);
      return ((void*)0);
    }
  }
  return tm;
}
