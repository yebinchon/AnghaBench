
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_6__ {int sizearray; scalar_t__ node; int * array; } ;
typedef TYPE_1__ Table ;


 int TValue ;
 scalar_t__ dummynode ;
 int luaH_setnum (int *,TYPE_1__*,int) ;
 int luaM_reallocvector (int *,int *,int,int,int ) ;
 int resize_hashpart (int *,TYPE_1__*,int) ;
 int setarrayvector (int *,TYPE_1__*,int) ;
 int setobjt2t (int *,int ,int *) ;
 int ttisnil (int *) ;

__attribute__((used)) static void resize (lua_State *L, Table *t, int nasize, int nhsize) {
  int i;
  int oldasize = t->sizearray;
  if (nasize > oldasize)
    setarrayvector(L, t, nasize);
  if (t->node != dummynode || nhsize>0)
    resize_hashpart(L, t, nhsize);
  if (nasize < oldasize) {
    t->sizearray = nasize;

    for (i=nasize; i<oldasize; i++) {
      if (!ttisnil(&t->array[i]))
        setobjt2t(L, luaH_setnum(L, t, i+1), &t->array[i]);
    }

    luaM_reallocvector(L, t->array, oldasize, nasize, TValue);
  }
}
