
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_13__ ;


typedef int lua_State ;
struct TYPE_15__ {int tt; } ;
struct TYPE_17__ {TYPE_1__ gch; } ;
struct TYPE_16__ {int nuse; } ;
struct TYPE_14__ {TYPE_2__ strt; } ;
typedef TYPE_3__ GCObject ;


 TYPE_13__* G (int *) ;
 int gco2cl (TYPE_3__*) ;
 int gco2h (TYPE_3__*) ;
 int gco2p (TYPE_3__*) ;
 int gco2th (TYPE_3__*) ;
 int gco2ts (TYPE_3__*) ;
 int gco2u (TYPE_3__*) ;
 int gco2uv (TYPE_3__*) ;
 int luaE_freethread (int *,int ) ;
 int luaF_freeclosure (int *,int ) ;
 int luaF_freeproto (int *,int ) ;
 int luaF_freeupval (int *,int ) ;
 int luaH_free (int *,int ) ;
 int luaM_freemem (int *,TYPE_3__*,int ) ;
 int sizestring (int ) ;
 int sizeudata (int ) ;

__attribute__((used)) static void freeobj(lua_State*L,GCObject*o){
switch(o->gch.tt){
case(8+1):luaF_freeproto(L,gco2p(o));break;
case 6:luaF_freeclosure(L,gco2cl(o));break;
case(8+2):luaF_freeupval(L,gco2uv(o));break;
case 5:luaH_free(L,gco2h(o));break;
case 8:{
luaE_freethread(L,gco2th(o));
break;
}
case 4:{
G(L)->strt.nuse--;
luaM_freemem(L,o,sizestring(gco2ts(o)));
break;
}
case 7:{
luaM_freemem(L,o,sizeudata(gco2u(o)));
break;
}
default:;
}
}
