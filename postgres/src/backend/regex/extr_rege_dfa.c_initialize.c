
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vars {int dummy; } ;
struct sset {int flags; int * lastseen; scalar_t__* states; int hash; } ;
struct dfa {int nssused; int wordsper; int * lastnopr; int * lastpost; struct sset* ssets; TYPE_1__* cnfa; } ;
typedef int chr ;
struct TYPE_2__ {int post; int pre; } ;


 int BSET (scalar_t__*,int ) ;
 int HASH (scalar_t__*,int) ;
 int LOCKED ;
 int NOPROGRESS ;
 int STARTER ;
 int assert (int) ;
 struct sset* getvacant (struct vars*,struct dfa*,int *,int *) ;

__attribute__((used)) static struct sset *
initialize(struct vars *v,
     struct dfa *d,
     chr *start)
{
 struct sset *ss;
 int i;


 if (d->nssused > 0 && (d->ssets[0].flags & STARTER))
  ss = &d->ssets[0];
 else
 {
  ss = getvacant(v, d, start, start);
  if (ss == ((void*)0))
   return ((void*)0);
  for (i = 0; i < d->wordsper; i++)
   ss->states[i] = 0;
  BSET(ss->states, d->cnfa->pre);
  ss->hash = HASH(ss->states, d->wordsper);
  assert(d->cnfa->pre != d->cnfa->post);
  ss->flags = STARTER | LOCKED | NOPROGRESS;

 }

 for (i = 0; i < d->nssused; i++)
  d->ssets[i].lastseen = ((void*)0);
 ss->lastseen = start;
 d->lastpost = ((void*)0);
 d->lastnopr = ((void*)0);
 return ss;
}
