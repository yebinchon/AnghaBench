
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct state {struct state* tmp; } ;
struct nfa {int dummy; } ;


 int EMPTY ;
 int cleartraverse (struct nfa*,struct state*) ;
 int duptraverse (struct nfa*,struct state*,struct state*) ;
 int newarc (struct nfa*,int ,int ,struct state*,struct state*) ;

__attribute__((used)) static void
dupnfa(struct nfa *nfa,
    struct state *start,
    struct state *stop,
    struct state *from,
    struct state *to)
{
 if (start == stop)
 {
  newarc(nfa, EMPTY, 0, from, to);
  return;
 }

 stop->tmp = to;
 duptraverse(nfa, start, from);


 stop->tmp = ((void*)0);
 cleartraverse(nfa, start);
}
