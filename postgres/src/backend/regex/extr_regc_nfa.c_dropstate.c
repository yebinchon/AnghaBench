
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct state {struct arc* outs; struct arc* ins; } ;
struct nfa {int dummy; } ;
struct arc {int dummy; } ;


 int freearc (struct nfa*,struct arc*) ;
 int freestate (struct nfa*,struct state*) ;

__attribute__((used)) static void
dropstate(struct nfa *nfa,
    struct state *s)
{
 struct arc *a;

 while ((a = s->ins) != ((void*)0))
  freearc(nfa, a);
 while ((a = s->outs) != ((void*)0))
  freearc(nfa, a);
 freestate(nfa, s);
}
