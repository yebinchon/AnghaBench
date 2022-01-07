
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int idx; scalar_t__ instack; } ;
typedef TYPE_2__ Upvaldesc ;
struct TYPE_11__ {int * v; } ;
typedef TYPE_3__ UpVal ;
struct TYPE_13__ {TYPE_1__** upvals; } ;
struct TYPE_12__ {int sizeupvalues; TYPE_2__* upvalues; TYPE_5__* cache; } ;
struct TYPE_9__ {int * v; } ;
typedef int TValue ;
typedef int * StkId ;
typedef TYPE_4__ Proto ;
typedef TYPE_5__ LClosure ;



__attribute__((used)) static LClosure *getcached (Proto *p, UpVal **encup, StkId base) {
  LClosure *c = p->cache;
  if (c != ((void*)0)) {
    int nup = p->sizeupvalues;
    Upvaldesc *uv = p->upvalues;
    int i;
    for (i = 0; i < nup; i++) {
      TValue *v = uv[i].instack ? base + uv[i].idx : encup[uv[i].idx]->v;
      if (c->upvals[i]->v != v)
        return ((void*)0);
    }
  }
  return c;
}
