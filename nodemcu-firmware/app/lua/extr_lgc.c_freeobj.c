
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


typedef int lua_State ;
struct TYPE_15__ {int gch; } ;
struct TYPE_14__ {int nuse; } ;
struct TYPE_13__ {TYPE_1__ strt; int * mainthread; } ;
typedef TYPE_2__ GCObject ;


 TYPE_12__* G (int *) ;







 int gco2cl (TYPE_2__*) ;
 int gco2h (TYPE_2__*) ;
 int gco2p (TYPE_2__*) ;
 int * gco2th (TYPE_2__*) ;
 int gco2ts (TYPE_2__*) ;
 int gco2u (TYPE_2__*) ;
 int gco2uv (TYPE_2__*) ;
 int gettt (int *) ;
 int isLFSobject (int *) ;
 int luaE_freethread (int *,int *) ;
 int luaF_freeclosure (int *,int ) ;
 int luaF_freeproto (int *,int ) ;
 int luaF_freeupval (int *,int ) ;
 int luaH_free (int *,int ) ;
 int luaM_freemem (int *,TYPE_2__*,int ) ;
 int lua_assert (int) ;
 int sizestring (int ) ;
 int sizeudata (int ) ;

__attribute__((used)) static void freeobj (lua_State *L, GCObject *o) {
  switch (gettt(&o->gch)) {
    case 133:
      lua_assert(!isLFSobject(&(o->gch)));
      luaF_freeproto(L, gco2p(o));
      break;
    case 134: luaF_freeclosure(L, gco2cl(o)); break;
    case 129: luaF_freeupval(L, gco2uv(o)); break;
    case 131: luaH_free(L, gco2h(o)); break;
    case 130: {
      lua_assert(gco2th(o) != L && gco2th(o) != G(L)->mainthread);
      luaE_freethread(L, gco2th(o));
      break;
    }
    case 132: {
      lua_assert(!isLFSobject(&(o->gch)));
      G(L)->strt.nuse--;
      luaM_freemem(L, o, sizestring(gco2ts(o)));
      break;
    }
    case 128: {
      luaM_freemem(L, o, sizeudata(gco2u(o)));
      break;
    }
    default: lua_assert(0);
  }
}
