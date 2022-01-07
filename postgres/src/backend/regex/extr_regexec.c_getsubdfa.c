
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vars {struct dfa** subdfas; TYPE_1__* g; } ;
struct subre {size_t id; int cnfa; } ;
struct dfa {int dummy; } ;
struct TYPE_2__ {int cmap; } ;


 int DOMALLOC ;
 scalar_t__ ISERR () ;
 struct dfa* newdfa (struct vars*,int *,int *,int ) ;

__attribute__((used)) static struct dfa *
getsubdfa(struct vars *v,
    struct subre *t)
{
 if (v->subdfas[t->id] == ((void*)0))
 {
  v->subdfas[t->id] = newdfa(v, &t->cnfa, &v->g->cmap, DOMALLOC);
  if (ISERR())
   return ((void*)0);
 }
 return v->subdfas[t->id];
}
