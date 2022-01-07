
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct state {scalar_t__ nins; scalar_t__ nouts; int flag; struct state* tmp; struct arc* ins; struct state* next; } ;
struct nfa {int * eos; TYPE_1__* post; struct state* states; } ;
struct arc {char type; int co; int to; int from; struct arc* inchain; } ;
struct TYPE_2__ {struct arc* ins; } ;
typedef int FILE ;


 char AHEAD ;
 scalar_t__ NISERR () ;
 int PLAIN ;
 int assert (int) ;
 int dropstate (struct nfa*,struct state*) ;
 int dumpnfa (struct nfa*,int *) ;
 int freearc (struct nfa*,struct arc*) ;
 int newarc (struct nfa*,int ,int ,int ,int ) ;
 scalar_t__ push (struct nfa*,struct arc*,struct state**) ;

__attribute__((used)) static void
pushfwd(struct nfa *nfa,
  FILE *f)
{
 struct state *s;
 struct state *nexts;
 struct arc *a;
 struct arc *nexta;
 struct state *intermediates;
 int progress;


 do
 {
  progress = 0;
  for (s = nfa->states; s != ((void*)0) && !NISERR(); s = nexts)
  {
   nexts = s->next;
   intermediates = ((void*)0);
   for (a = s->ins; a != ((void*)0) && !NISERR(); a = nexta)
   {
    nexta = a->inchain;
    if (a->type == '$' || a->type == AHEAD)
     if (push(nfa, a, &intermediates))
      progress = 1;
   }

   while (intermediates != ((void*)0))
   {
    struct state *ns = intermediates->tmp;

    intermediates->tmp = ((void*)0);
    intermediates = ns;
   }

   if ((s->nins == 0 || s->nouts == 0) && !s->flag)
    dropstate(nfa, s);
  }
  if (progress && f != ((void*)0))
   dumpnfa(nfa, f);
 } while (progress && !NISERR());
 if (NISERR())
  return;







 for (a = nfa->post->ins; a != ((void*)0); a = nexta)
 {
  nexta = a->inchain;
  if (a->type == '$')
  {
   assert(a->co == 0 || a->co == 1);
   newarc(nfa, PLAIN, nfa->eos[a->co], a->from, a->to);
   freearc(nfa, a);
  }
 }
}
