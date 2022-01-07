
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct state {char flag; } ;
struct nfa {int dummy; } ;


 struct state* newstate (struct nfa*) ;

__attribute__((used)) static struct state *
newfstate(struct nfa *nfa, int flag)
{
 struct state *s;

 s = newstate(nfa);
 if (s != ((void*)0))
  s->flag = (char) flag;
 return s;
}
