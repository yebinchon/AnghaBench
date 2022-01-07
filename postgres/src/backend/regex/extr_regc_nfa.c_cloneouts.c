
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct state {struct arc* outs; } ;
struct nfa {int dummy; } ;
struct arc {int co; struct arc* outchain; } ;


 int assert (int) ;
 int newarc (struct nfa*,int,int ,struct state*,struct state*) ;

__attribute__((used)) static void
cloneouts(struct nfa *nfa,
    struct state *old,
    struct state *from,
    struct state *to,
    int type)
{
 struct arc *a;

 assert(old != from);

 for (a = old->outs; a != ((void*)0); a = a->outchain)
  newarc(nfa, type, a->co, from, to);
}
