
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_5__ ;
typedef struct TYPE_35__ TYPE_4__ ;
typedef struct TYPE_34__ TYPE_3__ ;
typedef struct TYPE_33__ TYPE_2__ ;
typedef struct TYPE_32__ TYPE_25__ ;
typedef struct TYPE_31__ TYPE_23__ ;
typedef struct TYPE_30__ TYPE_21__ ;
typedef struct TYPE_29__ TYPE_1__ ;
typedef struct TYPE_28__ TYPE_19__ ;
typedef struct TYPE_27__ TYPE_17__ ;


struct TYPE_34__ {TYPE_5__* gray; } ;
typedef TYPE_3__ global_State ;
struct TYPE_29__ {int value; } ;
struct TYPE_35__ {TYPE_1__ u; int * v; } ;
typedef TYPE_4__ UpVal ;
typedef int Table ;
struct TYPE_36__ {int gch; } ;
struct TYPE_33__ {TYPE_5__* gclist; } ;
struct TYPE_32__ {TYPE_2__ c; } ;
struct TYPE_31__ {TYPE_5__* gclist; } ;
struct TYPE_30__ {TYPE_5__* gclist; } ;
struct TYPE_28__ {TYPE_5__* gclist; } ;
struct TYPE_27__ {int * env; int * metatable; } ;
typedef TYPE_5__ GCObject ;
 TYPE_25__* gco2cl (TYPE_5__*) ;
 TYPE_23__* gco2h (TYPE_5__*) ;
 TYPE_21__* gco2p (TYPE_5__*) ;
 TYPE_19__* gco2th (TYPE_5__*) ;
 TYPE_17__* gco2u (TYPE_5__*) ;
 TYPE_4__* gco2uv (TYPE_5__*) ;
 int gettt (int *) ;
 int gray2black (TYPE_5__*) ;
 scalar_t__ isLFSobject (int *) ;
 int isdead (TYPE_3__*,TYPE_5__*) ;
 scalar_t__ iswhite (TYPE_5__*) ;
 int luaR_isrotable (int *) ;
 int lua_assert (int) ;
 int markobject (TYPE_3__*,int *) ;
 int markvalue (TYPE_3__*,int *) ;
 int white2gray (TYPE_5__*) ;

__attribute__((used)) static void reallymarkobject (global_State *g, GCObject *o) {

  if (gettt(&o->gch) == 133 && isLFSobject(&(o->gch)))
    return;

  lua_assert(iswhite(o) && !isdead(g, o));
  white2gray(o);
  switch (gettt(&o->gch)) {
    case 132: {
      return;
    }
    case 128: {
      Table *mt = gco2u(o)->metatable;
      gray2black(o);
      if (mt && !luaR_isrotable(mt)) markobject(g, mt);
      markobject(g, gco2u(o)->env);
      return;
    }
    case 129: {
      UpVal *uv = gco2uv(o);
      markvalue(g, uv->v);
      if (uv->v == &uv->u.value)
        gray2black(o);
      return;
    }
    case 134: {
      gco2cl(o)->c.gclist = g->gray;
      g->gray = o;
      break;
    }
    case 131: {
      gco2h(o)->gclist = g->gray;
      g->gray = o;
      break;
    }
    case 130: {
      gco2th(o)->gclist = g->gray;
      g->gray = o;
      break;
    }
    case 133: {
      gco2p(o)->gclist = g->gray;
      g->gray = o;
      break;
    }
    default: lua_assert(0);
  }
}
