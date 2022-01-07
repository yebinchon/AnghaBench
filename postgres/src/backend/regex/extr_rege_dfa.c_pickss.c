
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vars {int dummy; } ;
struct TYPE_3__ {int co; int * ss; } ;
struct sset {int flags; int * lastseen; TYPE_2__* inchain; int ** outs; TYPE_1__ ins; int * states; } ;
struct dfa {int nssused; int nssets; int wordsper; int ncolors; struct sset* ssets; struct sset* search; TYPE_2__* incarea; int ** outsarea; int * statesarea; } ;
typedef int chr ;
struct TYPE_4__ {int * ss; } ;


 int ERR (int ) ;
 int FDEBUG (char*) ;
 int LOCKED ;
 int REG_ASSERT ;
 int WHITE ;

__attribute__((used)) static struct sset *
pickss(struct vars *v,
    struct dfa *d,
    chr *cp,
    chr *start)
{
 int i;
 struct sset *ss;
 struct sset *end;
 chr *ancient;


 if (d->nssused < d->nssets)
 {
  i = d->nssused;
  d->nssused++;
  ss = &d->ssets[i];
  FDEBUG(("new c%d\n", i));

  ss->states = &d->statesarea[i * d->wordsper];
  ss->flags = 0;
  ss->ins.ss = ((void*)0);
  ss->ins.co = WHITE;
  ss->outs = &d->outsarea[i * d->ncolors];
  ss->inchain = &d->incarea[i * d->ncolors];
  for (i = 0; i < d->ncolors; i++)
  {
   ss->outs[i] = ((void*)0);
   ss->inchain[i].ss = ((void*)0);
  }
  return ss;
 }


 if (cp - start > d->nssets * 2 / 3)
  ancient = cp - d->nssets * 2 / 3;
 else
  ancient = start;
 for (ss = d->search, end = &d->ssets[d->nssets]; ss < end; ss++)
  if ((ss->lastseen == ((void*)0) || ss->lastseen < ancient) &&
   !(ss->flags & LOCKED))
  {
   d->search = ss + 1;
   FDEBUG(("replacing c%d\n", (int) (ss - d->ssets)));
   return ss;
  }
 for (ss = d->ssets, end = d->search; ss < end; ss++)
  if ((ss->lastseen == ((void*)0) || ss->lastseen < ancient) &&
   !(ss->flags & LOCKED))
  {
   d->search = ss + 1;
   FDEBUG(("replacing c%d\n", (int) (ss - d->ssets)));
   return ss;
  }


 FDEBUG(("cannot find victim to replace!\n"));
 ERR(REG_ASSERT);
 return ((void*)0);
}
