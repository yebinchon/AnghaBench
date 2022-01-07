
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vars {struct dfa** ladfas; TYPE_1__* g; } ;
struct subre {int cnfa; } ;
struct dfa {int dummy; } ;
struct TYPE_2__ {int nlacons; int cmap; struct subre* lacons; } ;


 int DOMALLOC ;
 scalar_t__ ISERR () ;
 int assert (int) ;
 struct dfa* newdfa (struct vars*,int *,int *,int ) ;

__attribute__((used)) static struct dfa *
getladfa(struct vars *v,
   int n)
{
 assert(n > 0 && n < v->g->nlacons && v->g->lacons != ((void*)0));

 if (v->ladfas[n] == ((void*)0))
 {
  struct subre *sub = &v->g->lacons[n];

  v->ladfas[n] = newdfa(v, &sub->cnfa, &v->g->cmap, DOMALLOC);
  if (ISERR())
   return ((void*)0);
 }
 return v->ladfas[n];
}
