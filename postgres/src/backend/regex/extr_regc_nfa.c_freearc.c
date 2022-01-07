
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct state {struct arc* free; int nins; struct arc* ins; int nouts; struct arc* outs; } ;
struct nfa {int cm; int * parent; } ;
struct arc {scalar_t__ type; struct arc* freechain; struct arc* outchainRev; struct arc* outchain; struct arc* inchainRev; struct arc* inchain; struct state* to; struct state* from; } ;


 scalar_t__ COLORED (struct arc*) ;
 int assert (int) ;
 int uncolorchain (int ,struct arc*) ;

__attribute__((used)) static void
freearc(struct nfa *nfa,
  struct arc *victim)
{
 struct state *from = victim->from;
 struct state *to = victim->to;
 struct arc *predecessor;

 assert(victim->type != 0);


 if (COLORED(victim) && nfa->parent == ((void*)0))
  uncolorchain(nfa->cm, victim);


 assert(from != ((void*)0));
 predecessor = victim->outchainRev;
 if (predecessor == ((void*)0))
 {
  assert(from->outs == victim);
  from->outs = victim->outchain;
 }
 else
 {
  assert(predecessor->outchain == victim);
  predecessor->outchain = victim->outchain;
 }
 if (victim->outchain != ((void*)0))
 {
  assert(victim->outchain->outchainRev == victim);
  victim->outchain->outchainRev = predecessor;
 }
 from->nouts--;


 assert(to != ((void*)0));
 predecessor = victim->inchainRev;
 if (predecessor == ((void*)0))
 {
  assert(to->ins == victim);
  to->ins = victim->inchain;
 }
 else
 {
  assert(predecessor->inchain == victim);
  predecessor->inchain = victim->inchain;
 }
 if (victim->inchain != ((void*)0))
 {
  assert(victim->inchain->inchainRev == victim);
  victim->inchain->inchainRev = predecessor;
 }
 to->nins--;


 victim->type = 0;
 victim->from = ((void*)0);
 victim->to = ((void*)0);
 victim->inchain = ((void*)0);
 victim->inchainRev = ((void*)0);
 victim->outchain = ((void*)0);
 victim->outchainRev = ((void*)0);
 victim->freechain = from->free;
 from->free = victim;
}
