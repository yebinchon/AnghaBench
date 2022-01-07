
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct state {int nins; int nouts; struct arc* outs; struct arc* ins; } ;
struct nfa {int cm; int * parent; } ;
struct arc {int type; struct arc* outchainRev; struct arc* outchain; struct arc* inchainRev; struct arc* inchain; struct state* from; struct state* to; int co; } ;
typedef int color ;


 scalar_t__ COLORED (struct arc*) ;
 scalar_t__ NISERR () ;
 struct arc* allocarc (struct nfa*,struct state*) ;
 int assert (int ) ;
 int colorchain (int ,struct arc*) ;

__attribute__((used)) static void
createarc(struct nfa *nfa,
    int t,
    color co,
    struct state *from,
    struct state *to)
{
 struct arc *a;


 a = allocarc(nfa, from);
 if (NISERR())
  return;
 assert(a != ((void*)0));

 a->type = t;
 a->co = co;
 a->to = to;
 a->from = from;






 a->inchain = to->ins;
 a->inchainRev = ((void*)0);
 if (to->ins)
  to->ins->inchainRev = a;
 to->ins = a;
 a->outchain = from->outs;
 a->outchainRev = ((void*)0);
 if (from->outs)
  from->outs->outchainRev = a;
 from->outs = a;

 from->nouts++;
 to->nins++;

 if (COLORED(a) && nfa->parent == ((void*)0))
  colorchain(nfa->cm, a);
}
