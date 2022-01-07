
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int global_State ;
struct TYPE_9__ {int nups; } ;
struct TYPE_7__ {int nupvalues; TYPE_5__** upvals; TYPE_5__* p; } ;
struct TYPE_6__ {int nupvalues; int * upvalue; scalar_t__ isC; TYPE_5__* env; } ;
struct TYPE_8__ {TYPE_2__ l; TYPE_1__ c; } ;
typedef TYPE_3__ Closure ;


 int lua_assert (int) ;
 int markobject (int *,TYPE_5__*) ;
 int markvalue (int *,int *) ;

__attribute__((used)) static void traverseclosure (global_State *g, Closure *cl) {
  markobject(g, cl->c.env);
  if (cl->c.isC) {
    int i;
    for (i=0; i<cl->c.nupvalues; i++)
      markvalue(g, &cl->c.upvalue[i]);
  }
  else {
    int i;
    lua_assert(cl->l.nupvalues == cl->l.p->nups);
    markobject(g, cl->l.p);
    for (i=0; i<cl->l.nupvalues; i++) {
      if(cl->l.upvals[i])
        markobject(g, cl->l.upvals[i]);
    }
  }
}
