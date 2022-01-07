
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct state {int dummy; } ;
struct nfa {int dummy; } ;
struct arc {int co; int type; } ;


 int newarc (struct nfa*,int ,int ,struct state*,struct state*) ;

__attribute__((used)) static void
cparc(struct nfa *nfa,
   struct arc *oa,
   struct state *from,
   struct state *to)
{
 newarc(nfa, oa->type, oa->co, from, to);
}
