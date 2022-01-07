
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfa {scalar_t__* bos; scalar_t__* eos; TYPE_1__* parent; int cm; } ;
struct TYPE_2__ {scalar_t__* bos; scalar_t__* eos; } ;


 scalar_t__ COLORLESS ;
 int assert (int) ;
 void* pseudocolor (int ) ;

__attribute__((used)) static void
specialcolors(struct nfa *nfa)
{

 if (nfa->parent == ((void*)0))
 {
  nfa->bos[0] = pseudocolor(nfa->cm);
  nfa->bos[1] = pseudocolor(nfa->cm);
  nfa->eos[0] = pseudocolor(nfa->cm);
  nfa->eos[1] = pseudocolor(nfa->cm);
 }
 else
 {
  assert(nfa->parent->bos[0] != COLORLESS);
  nfa->bos[0] = nfa->parent->bos[0];
  assert(nfa->parent->bos[1] != COLORLESS);
  nfa->bos[1] = nfa->parent->bos[1];
  assert(nfa->parent->eos[0] != COLORLESS);
  nfa->eos[0] = nfa->parent->eos[0];
  assert(nfa->parent->eos[1] != COLORLESS);
  nfa->eos[1] = nfa->parent->eos[1];
 }
}
