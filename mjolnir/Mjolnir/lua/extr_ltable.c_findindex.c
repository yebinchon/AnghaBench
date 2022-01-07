
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_5__ {unsigned int sizearray; } ;
typedef TYPE_1__ Table ;
typedef int StkId ;
typedef int Node ;


 unsigned int arrayindex (int ) ;
 unsigned int cast_int (int *) ;
 scalar_t__ deadvalue (int ) ;
 scalar_t__ gcvalue (int ) ;
 int gkey (int *) ;
 int gnext (int *) ;
 int gnode (TYPE_1__*,int ) ;
 scalar_t__ iscollectable (int ) ;
 int luaG_runerror (int *,char*) ;
 scalar_t__ luaV_rawequalobj (int ,int ) ;
 int * mainposition (TYPE_1__*,int ) ;
 scalar_t__ ttisdeadkey (int ) ;
 scalar_t__ ttisnil (int ) ;

__attribute__((used)) static unsigned int findindex (lua_State *L, Table *t, StkId key) {
  unsigned int i;
  if (ttisnil(key)) return 0;
  i = arrayindex(key);
  if (i != 0 && i <= t->sizearray)
    return i;
  else {
    int nx;
    Node *n = mainposition(t, key);
    for (;;) {

      if (luaV_rawequalobj(gkey(n), key) ||
            (ttisdeadkey(gkey(n)) && iscollectable(key) &&
             deadvalue(gkey(n)) == gcvalue(key))) {
        i = cast_int(n - gnode(t, 0));

        return (i + 1) + t->sizearray;
      }
      nx = gnext(n);
      if (nx == 0)
        luaG_runerror(L, "invalid key to 'next'");
      else n += nx;
    }
  }
}
