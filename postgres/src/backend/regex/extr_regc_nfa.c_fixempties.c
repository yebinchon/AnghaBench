
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct state {int nouts; int nins; size_t no; scalar_t__ flag; struct state* next; struct arc* outs; struct arc* ins; struct state* tmp; } ;
struct nfa {int nstates; struct state* states; } ;
struct arc {scalar_t__ type; struct arc* outchain; struct arc* inchain; struct state* from; struct state* to; } ;
typedef int FILE ;


 scalar_t__ EMPTY ;
 int FREE (struct arc**) ;
 scalar_t__ MALLOC (int) ;
 int NERR (int ) ;
 scalar_t__ NISERR () ;
 int REG_ESPACE ;
 int assert (int) ;
 int dropstate (struct nfa*,struct state*) ;
 int dumpnfa (struct nfa*,int *) ;
 struct state* emptyreachable (struct nfa*,struct state*,struct state*,struct arc**) ;
 int freearc (struct nfa*,struct arc*) ;
 int hasnonemptyout (struct state*) ;
 int mergeins (struct nfa*,struct state*,struct arc**,int) ;
 int moveins (struct nfa*,struct state*,struct state*) ;
 int moveouts (struct nfa*,struct state*,struct state*) ;

__attribute__((used)) static void
fixempties(struct nfa *nfa,
     FILE *f)
{
 struct state *s;
 struct state *s2;
 struct state *nexts;
 struct arc *a;
 struct arc *nexta;
 int totalinarcs;
 struct arc **inarcsorig;
 struct arc **arcarray;
 int arccount;
 int prevnins;
 int nskip;






 for (s = nfa->states; s != ((void*)0) && !NISERR(); s = nexts)
 {
  nexts = s->next;
  if (s->flag || s->nouts != 1)
   continue;
  a = s->outs;
  assert(a != ((void*)0) && a->outchain == ((void*)0));
  if (a->type != EMPTY)
   continue;
  if (s != a->to)
   moveins(nfa, s, a->to);
  dropstate(nfa, s);
 }





 for (s = nfa->states; s != ((void*)0) && !NISERR(); s = nexts)
 {
  nexts = s->next;

  assert(s->tmp == ((void*)0));
  if (s->flag || s->nins != 1)
   continue;
  a = s->ins;
  assert(a != ((void*)0) && a->inchain == ((void*)0));
  if (a->type != EMPTY)
   continue;
  if (s != a->from)
   moveouts(nfa, s, a->from);
  dropstate(nfa, s);
 }

 if (NISERR())
  return;
 inarcsorig = (struct arc **) MALLOC(nfa->nstates * sizeof(struct arc *));
 if (inarcsorig == ((void*)0))
 {
  NERR(REG_ESPACE);
  return;
 }
 totalinarcs = 0;
 for (s = nfa->states; s != ((void*)0); s = s->next)
 {
  inarcsorig[s->no] = s->ins;
  totalinarcs += s->nins;
 }







 arcarray = (struct arc **) MALLOC(totalinarcs * sizeof(struct arc *));
 if (arcarray == ((void*)0))
 {
  NERR(REG_ESPACE);
  FREE(inarcsorig);
  return;
 }


 for (s = nfa->states; s != ((void*)0) && !NISERR(); s = s->next)
 {

  if (!s->flag && !hasnonemptyout(s))
   continue;


  arccount = 0;
  for (s2 = emptyreachable(nfa, s, s, inarcsorig); s2 != s; s2 = nexts)
  {

   for (a = inarcsorig[s2->no]; a != ((void*)0); a = a->inchain)
   {
    if (a->type != EMPTY)
     arcarray[arccount++] = a;
   }


   nexts = s2->tmp;
   s2->tmp = ((void*)0);
  }
  s->tmp = ((void*)0);
  assert(arccount <= totalinarcs);


  prevnins = s->nins;


  mergeins(nfa, s, arcarray, arccount);


  nskip = s->nins - prevnins;
  a = s->ins;
  while (nskip-- > 0)
   a = a->inchain;
  inarcsorig[s->no] = a;
 }

 FREE(arcarray);
 FREE(inarcsorig);

 if (NISERR())
  return;




 for (s = nfa->states; s != ((void*)0); s = s->next)
 {
  for (a = s->outs; a != ((void*)0); a = nexta)
  {
   nexta = a->outchain;
   if (a->type == EMPTY)
    freearc(nfa, a);
  }
 }






 for (s = nfa->states; s != ((void*)0); s = nexts)
 {
  nexts = s->next;
  if ((s->nins == 0 || s->nouts == 0) && !s->flag)
   dropstate(nfa, s);
 }

 if (f != ((void*)0))
  dumpnfa(nfa, f);
}
