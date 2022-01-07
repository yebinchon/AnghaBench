
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct state {int no; struct state* next; int flag; TYPE_1__* tmp; } ;
struct nfa {int nstates; struct state* states; TYPE_1__* post; int pre; } ;
struct TYPE_3__ {scalar_t__ nins; struct TYPE_3__* tmp; } ;


 scalar_t__ NISERR () ;
 int assert (int) ;
 int cleartraverse (struct nfa*,int ) ;
 int dropstate (struct nfa*,struct state*) ;
 int markcanreach (struct nfa*,TYPE_1__*,int ,TYPE_1__*) ;
 int markreachable (struct nfa*,int ,struct state*,int ) ;

__attribute__((used)) static void
cleanup(struct nfa *nfa)
{
 struct state *s;
 struct state *nexts;
 int n;

 if (NISERR())
  return;



 markreachable(nfa, nfa->pre, (struct state *) ((void*)0), nfa->pre);
 markcanreach(nfa, nfa->post, nfa->pre, nfa->post);
 for (s = nfa->states; s != ((void*)0) && !NISERR(); s = nexts)
 {
  nexts = s->next;
  if (s->tmp != nfa->post && !s->flag)
   dropstate(nfa, s);
 }
 assert(NISERR() || nfa->post->nins == 0 || nfa->post->tmp == nfa->post);
 cleartraverse(nfa, nfa->pre);
 assert(NISERR() || nfa->post->nins == 0 || nfa->post->tmp == ((void*)0));



 n = 0;
 for (s = nfa->states; s != ((void*)0); s = s->next)
  s->no = n++;
 nfa->nstates = n;
}
