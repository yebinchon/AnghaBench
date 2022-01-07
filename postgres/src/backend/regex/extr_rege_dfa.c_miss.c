
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vars {int re; } ;
struct TYPE_2__ {size_t co; struct sset* ss; } ;
struct sset {unsigned int hash; TYPE_1__ ins; TYPE_1__* inchain; struct sset** outs; int flags; scalar_t__* states; } ;
struct dfa {int wordsper; int nstates; int nssused; struct sset* ssets; scalar_t__* work; struct cnfa* cnfa; } ;
struct cnfa {size_t post; int* stflags; int flags; size_t ncolors; struct carc** states; } ;
struct carc {size_t co; size_t to; } ;
typedef size_t color ;
typedef int chr ;


 int BSET (scalar_t__*,size_t) ;
 scalar_t__ CANCEL_REQUESTED (int ) ;
 int CNFA_NOPROGRESS ;
 size_t COLORLESS ;
 int ERR (int ) ;
 int FDEBUG (char*) ;
 unsigned int HASH (scalar_t__*,int) ;
 int HASLACONS ;
 scalar_t__ HIT (unsigned int,scalar_t__*,struct sset*,int) ;
 scalar_t__ ISBSET (scalar_t__*,int) ;
 scalar_t__ ISERR () ;
 int NOPROGRESS ;
 int POSTSTATE ;
 int REG_CANCEL ;
 int assert (int) ;
 struct sset* getvacant (struct vars*,struct dfa*,int *,int *) ;
 int lacon (struct vars*,struct cnfa*,int *,size_t) ;

__attribute__((used)) static struct sset *
miss(struct vars *v,
  struct dfa *d,
  struct sset *css,
  color co,
  chr *cp,
  chr *start)
{
 struct cnfa *cnfa = d->cnfa;
 int i;
 unsigned h;
 struct carc *ca;
 struct sset *p;
 int ispost;
 int noprogress;
 int gotstate;
 int dolacons;
 int sawlacons;


 if (css->outs[co] != ((void*)0))
 {
  FDEBUG(("hit\n"));
  return css->outs[co];
 }
 FDEBUG(("miss\n"));





 if (CANCEL_REQUESTED(v->re))
 {
  ERR(REG_CANCEL);
  return ((void*)0);
 }






 for (i = 0; i < d->wordsper; i++)
  d->work[i] = 0;
 ispost = 0;
 noprogress = 1;
 gotstate = 0;
 for (i = 0; i < d->nstates; i++)
  if (ISBSET(css->states, i))
   for (ca = cnfa->states[i]; ca->co != COLORLESS; ca++)
    if (ca->co == co)
    {
     BSET(d->work, ca->to);
     gotstate = 1;
     if (ca->to == cnfa->post)
      ispost = 1;
     if (!(cnfa->stflags[ca->to] & CNFA_NOPROGRESS))
      noprogress = 0;
     FDEBUG(("%d -> %d\n", i, ca->to));
    }
 if (!gotstate)
  return ((void*)0);
 dolacons = (cnfa->flags & HASLACONS);
 sawlacons = 0;

 while (dolacons)
 {
  dolacons = 0;
  for (i = 0; i < d->nstates; i++)
   if (ISBSET(d->work, i))
    for (ca = cnfa->states[i]; ca->co != COLORLESS; ca++)
    {
     if (ca->co < cnfa->ncolors)
      continue;
     if (ISBSET(d->work, ca->to))
      continue;
     sawlacons = 1;
     if (!lacon(v, cnfa, cp, ca->co))
     {
      if (ISERR())
       return ((void*)0);
      continue;
     }
     if (ISERR())
      return ((void*)0);
     BSET(d->work, ca->to);
     dolacons = 1;
     if (ca->to == cnfa->post)
      ispost = 1;
     if (!(cnfa->stflags[ca->to] & CNFA_NOPROGRESS))
      noprogress = 0;
     FDEBUG(("%d :> %d\n", i, ca->to));
    }
 }
 h = HASH(d->work, d->wordsper);


 for (p = d->ssets, i = d->nssused; i > 0; p++, i--)
  if (HIT(h, d->work, p, d->wordsper))
  {
   FDEBUG(("cached c%d\n", (int) (p - d->ssets)));
   break;
  }
 if (i == 0)
 {
  p = getvacant(v, d, cp, start);
  if (p == ((void*)0))
   return ((void*)0);
  assert(p != css);
  for (i = 0; i < d->wordsper; i++)
   p->states[i] = d->work[i];
  p->hash = h;
  p->flags = (ispost) ? POSTSTATE : 0;
  if (noprogress)
   p->flags |= NOPROGRESS;

 }
 if (!sawlacons)
 {
  FDEBUG(("c%d[%d]->c%d\n",
    (int) (css - d->ssets), co, (int) (p - d->ssets)));
  css->outs[co] = p;
  css->inchain[co] = p->ins;
  p->ins.ss = css;
  p->ins.co = co;
 }
 return p;
}
