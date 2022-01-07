
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vars {int * start; } ;
struct sset {int flags; int * lastseen; } ;
struct dfa {int nssused; struct sset* ssets; int * lastnopr; } ;
typedef int chr ;


 int NOPROGRESS ;

__attribute__((used)) static chr *
lastcold(struct vars *v,
   struct dfa *d)
{
 struct sset *ss;
 chr *nopr;
 int i;

 nopr = d->lastnopr;
 if (nopr == ((void*)0))
  nopr = v->start;
 for (ss = d->ssets, i = d->nssused; i > 0; ss++, i--)
  if ((ss->flags & NOPROGRESS) && nopr < ss->lastseen)
   nopr = ss->lastseen;
 return nopr;
}
