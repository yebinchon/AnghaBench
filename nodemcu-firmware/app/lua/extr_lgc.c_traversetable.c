
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int weak; } ;
typedef TYPE_1__ global_State ;
struct TYPE_12__ {int marked; int sizearray; int node; int * array; int gclist; scalar_t__ metatable; } ;
typedef TYPE_2__ Table ;
typedef int TValue ;
typedef int Node ;


 int KEYWEAK ;
 int KEYWEAKBIT ;
 scalar_t__ LUA_TDEADKEY ;
 int TM_MODE ;
 int VALUEWEAK ;
 int VALUEWEAKBIT ;
 int cast_byte (int) ;
 int * gfasttm (TYPE_1__*,scalar_t__,int ) ;
 int * gkey (int *) ;
 int * gnode (TYPE_2__*,int) ;
 int * gval (int *) ;
 scalar_t__ luaH_isdummy (int ) ;
 int * luaO_nilobject ;
 int luaR_isrotable (scalar_t__) ;
 int lua_assert (int) ;
 int markobject (TYPE_1__*,scalar_t__) ;
 int markvalue (TYPE_1__*,int *) ;
 int obj2gco (TYPE_2__*) ;
 int removeentry (int *) ;
 int sizenode (TYPE_2__*) ;
 int * strchr (int ,char) ;
 int svalue (int const*) ;
 scalar_t__ ttisnil (int *) ;
 scalar_t__ ttisstring (int const*) ;
 scalar_t__ ttype (int *) ;

__attribute__((used)) static int traversetable (global_State *g, Table *h) {
  int i;
  int weakkey = 0;
  int weakvalue = 0;
  const TValue *mode = luaO_nilobject;

  if (h->metatable) {
    if (!luaR_isrotable(h->metatable))
      markobject(g, h->metatable);
    mode = gfasttm(g, h->metatable, TM_MODE);
  }

  if (mode && ttisstring(mode)) {
    weakkey = (strchr(svalue(mode), 'k') != ((void*)0));
    weakvalue = (strchr(svalue(mode), 'v') != ((void*)0));
    if (weakkey || weakvalue) {
      h->marked &= ~(KEYWEAK | VALUEWEAK);
      h->marked |= cast_byte((weakkey << KEYWEAKBIT) |
                             (weakvalue << VALUEWEAKBIT));
      h->gclist = g->weak;
      g->weak = obj2gco(h);
    }
  }
  if (weakkey && weakvalue) return 1;
  if (!weakvalue) {
    i = h->sizearray;
    while (i--)
      markvalue(g, &h->array[i]);
  }
  if (luaH_isdummy (h->node))
    return weakkey || weakvalue;
  i = sizenode(h);
  while (i--) {
    Node *n = gnode(h, i);
    lua_assert(ttype(gkey(n)) != LUA_TDEADKEY || ttisnil(gval(n)));
    if (ttisnil(gval(n)))
      removeentry(n);
    else {
      lua_assert(!ttisnil(gkey(n)));
      if (!weakkey) markvalue(g, gkey(n));
      if (!weakvalue) markvalue(g, gval(n));
    }
  }
  return weakkey || weakvalue;
}
