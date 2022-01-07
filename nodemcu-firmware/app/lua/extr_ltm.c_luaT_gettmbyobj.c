
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
typedef int Table ;
struct TYPE_6__ {int * tmname; int ** mt; } ;
struct TYPE_5__ {int * metatable; } ;
struct TYPE_4__ {int * metatable; } ;
typedef int TValue ;
typedef size_t TMS ;


 TYPE_3__* G (int *) ;



 TYPE_2__* hvalue (int const*) ;
 int const* luaH_getstr (int *,int ) ;
 int const* luaH_getstr_ro (int *,int ) ;
 int const* luaO_nilobject ;
 scalar_t__ luaR_getmeta (int ) ;
 scalar_t__ luaR_isrotable (int *) ;
 int rvalue (int const*) ;
 size_t ttype (int const*) ;
 TYPE_1__* uvalue (int const*) ;

const TValue *luaT_gettmbyobj (lua_State *L, const TValue *o, TMS event) {
  Table *mt;
  switch (ttype(o)) {
    case 129:
      mt = hvalue(o)->metatable;
      break;
    case 130:
      mt = (Table*)luaR_getmeta(rvalue(o));
      break;
    case 128:
      mt = uvalue(o)->metatable;
      break;
    default:
      mt = G(L)->mt[ttype(o)];
  }
  if (!mt)
    return luaO_nilobject;
  else if (luaR_isrotable(mt))
    return luaH_getstr_ro(mt, G(L)->tmname[event]);
  else
    return luaH_getstr(mt, G(L)->tmname[event]);
}
