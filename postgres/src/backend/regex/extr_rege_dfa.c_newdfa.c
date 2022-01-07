
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vars {int eflags; } ;
struct sset {int dummy; } ;
struct dfa {unsigned int* statesarea; unsigned int* work; int cptsmalloced; char* mallocarea; int nssets; int nstates; size_t ncolors; int wordsper; struct sset* ssets; struct sset* search; int * lastnopr; int * lastpost; struct colormap* cm; struct cnfa* cnfa; scalar_t__ nssused; struct arcp* incarea; struct sset** outsarea; } ;
struct smalldfa {unsigned int* statesarea; struct arcp* incarea; struct sset** outsarea; struct sset* ssets; struct dfa dfa; } ;
struct colormap {int dummy; } ;
struct cnfa {int nstates; size_t ncolors; } ;
struct arcp {int dummy; } ;


 int ERR (int ) ;
 size_t FEWCOLORS ;
 size_t FEWSTATES ;
 scalar_t__ MALLOC (size_t) ;
 int REG_ESPACE ;
 int REG_SMALL ;
 int UBITS ;
 size_t WORK ;
 int assert (int) ;
 int freedfa (struct dfa*) ;

__attribute__((used)) static struct dfa *
newdfa(struct vars *v,
    struct cnfa *cnfa,
    struct colormap *cm,
    struct smalldfa *sml)
{
 struct dfa *d;
 size_t nss = cnfa->nstates * 2;
 int wordsper = (cnfa->nstates + UBITS - 1) / UBITS;
 struct smalldfa *smallwas = sml;

 assert(cnfa != ((void*)0) && cnfa->nstates != 0);

 if (nss <= FEWSTATES && cnfa->ncolors <= FEWCOLORS)
 {
  assert(wordsper == 1);
  if (sml == ((void*)0))
  {
   sml = (struct smalldfa *) MALLOC(sizeof(struct smalldfa));
   if (sml == ((void*)0))
   {
    ERR(REG_ESPACE);
    return ((void*)0);
   }
  }
  d = &sml->dfa;
  d->ssets = sml->ssets;
  d->statesarea = sml->statesarea;
  d->work = &d->statesarea[nss];
  d->outsarea = sml->outsarea;
  d->incarea = sml->incarea;
  d->cptsmalloced = 0;
  d->mallocarea = (smallwas == ((void*)0)) ? (char *) sml : ((void*)0);
 }
 else
 {
  d = (struct dfa *) MALLOC(sizeof(struct dfa));
  if (d == ((void*)0))
  {
   ERR(REG_ESPACE);
   return ((void*)0);
  }
  d->ssets = (struct sset *) MALLOC(nss * sizeof(struct sset));
  d->statesarea = (unsigned *) MALLOC((nss + WORK) * wordsper *
           sizeof(unsigned));
  d->work = &d->statesarea[nss * wordsper];
  d->outsarea = (struct sset **) MALLOC(nss * cnfa->ncolors *
             sizeof(struct sset *));
  d->incarea = (struct arcp *) MALLOC(nss * cnfa->ncolors *
           sizeof(struct arcp));
  d->cptsmalloced = 1;
  d->mallocarea = (char *) d;
  if (d->ssets == ((void*)0) || d->statesarea == ((void*)0) ||
   d->outsarea == ((void*)0) || d->incarea == ((void*)0))
  {
   freedfa(d);
   ERR(REG_ESPACE);
   return ((void*)0);
  }
 }

 d->nssets = (v->eflags & REG_SMALL) ? 7 : nss;
 d->nssused = 0;
 d->nstates = cnfa->nstates;
 d->ncolors = cnfa->ncolors;
 d->wordsper = wordsper;
 d->cnfa = cnfa;
 d->cm = cm;
 d->lastpost = ((void*)0);
 d->lastnopr = ((void*)0);
 d->search = d->ssets;



 return d;
}
