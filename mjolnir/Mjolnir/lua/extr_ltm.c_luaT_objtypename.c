
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
typedef int Table ;
struct TYPE_4__ {int * metatable; } ;
struct TYPE_3__ {int * metatable; } ;
typedef int TValue ;


 char const* getstr (int ) ;
 TYPE_2__* hvalue (int const*) ;
 int * luaH_getshortstr (int *,int ) ;
 int luaS_new (int *,char*) ;
 int tsvalue (int const*) ;
 scalar_t__ ttisfulluserdata (int const*) ;
 scalar_t__ ttisstring (int const*) ;
 scalar_t__ ttistable (int const*) ;
 int ttnov (int const*) ;
 char const* ttypename (int ) ;
 TYPE_1__* uvalue (int const*) ;

const char *luaT_objtypename (lua_State *L, const TValue *o) {
  Table *mt;
  if ((ttistable(o) && (mt = hvalue(o)->metatable) != ((void*)0)) ||
      (ttisfulluserdata(o) && (mt = uvalue(o)->metatable) != ((void*)0))) {
    const TValue *name = luaH_getshortstr(mt, luaS_new(L, "__name"));
    if (ttisstring(name))
      return getstr(tsvalue(name));
  }
  return ttypename(ttnov(o));
}
