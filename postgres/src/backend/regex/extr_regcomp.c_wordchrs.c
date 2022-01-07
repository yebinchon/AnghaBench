
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vars {struct state* wordchrs; int * savenow; int nfa; } ;
struct state {int dummy; } ;


 scalar_t__ ISERR () ;
 int NEXT () ;
 int NOERR () ;
 scalar_t__ SEE (char) ;
 int assert (int) ;
 int bracket (struct vars*,struct state*,struct state*) ;
 int lexword (struct vars*) ;
 struct state* newstate (int ) ;

__attribute__((used)) static void
wordchrs(struct vars *v)
{
 struct state *left;
 struct state *right;

 if (v->wordchrs != ((void*)0))
 {
  NEXT();
  return;
 }

 left = newstate(v->nfa);
 right = newstate(v->nfa);
 NOERR();

 lexword(v);
 NEXT();
 assert(v->savenow != ((void*)0) && SEE('['));
 bracket(v, left, right);
 assert((v->savenow != ((void*)0) && SEE(']')) || ISERR());
 NEXT();
 NOERR();
 v->wordchrs = left;
}
