
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vars {int dummy; } ;
struct arcp {size_t co; struct sset* ss; int member_1; int * member_0; } ;
struct sset {int flags; int * lastseen; struct arcp* inchain; struct sset** outs; struct arcp ins; } ;
struct dfa {int ncolors; int * lastnopr; int * lastpost; struct sset* ssets; } ;
typedef size_t color ;
typedef int chr ;


 int FDEBUG (char*) ;
 int LOCKED ;
 int NOPROGRESS ;
 int POSTSTATE ;
 int assert (int) ;
 struct sset* pickss (struct vars*,struct dfa*,int *,int *) ;

__attribute__((used)) static struct sset *
getvacant(struct vars *v,
    struct dfa *d,
    chr *cp,
    chr *start)
{
 int i;
 struct sset *ss;
 struct sset *p;
 struct arcp ap;
 color co;

 ss = pickss(v, d, cp, start);
 if (ss == ((void*)0))
  return ((void*)0);
 assert(!(ss->flags & LOCKED));


 ap = ss->ins;
 while ((p = ap.ss) != ((void*)0))
 {
  co = ap.co;
  FDEBUG(("zapping c%d's %ld outarc\n", (int) (p - d->ssets), (long) co));
  p->outs[co] = ((void*)0);
  ap = p->inchain[co];
  p->inchain[co].ss = ((void*)0);
 }
 ss->ins.ss = ((void*)0);


 for (i = 0; i < d->ncolors; i++)
 {
  p = ss->outs[i];
  assert(p != ss);
  if (p == ((void*)0))
   continue;
  FDEBUG(("del outarc %d from c%d's in chn\n", i, (int) (p - d->ssets)));
  if (p->ins.ss == ss && p->ins.co == i)
   p->ins = ss->inchain[i];
  else
  {
   struct arcp lastap = {((void*)0), 0};

   assert(p->ins.ss != ((void*)0));
   for (ap = p->ins; ap.ss != ((void*)0) &&
     !(ap.ss == ss && ap.co == i);
     ap = ap.ss->inchain[ap.co])
    lastap = ap;
   assert(ap.ss != ((void*)0));
   lastap.ss->inchain[lastap.co] = ss->inchain[i];
  }
  ss->outs[i] = ((void*)0);
  ss->inchain[i].ss = ((void*)0);
 }


 if ((ss->flags & POSTSTATE) && ss->lastseen != d->lastpost &&
  (d->lastpost == ((void*)0) || d->lastpost < ss->lastseen))
  d->lastpost = ss->lastseen;


 if ((ss->flags & NOPROGRESS) && ss->lastseen != d->lastnopr &&
  (d->lastnopr == ((void*)0) || d->lastnopr < ss->lastseen))
  d->lastnopr = ss->lastseen;

 return ss;
}
