
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vars {int cm; } ;
struct state {struct state* tmp; struct arc* ins; struct arc* outs; } ;
struct nfa {scalar_t__* bos; struct state* pre; } ;
struct arc {scalar_t__ type; scalar_t__ co; struct state* from; struct arc* inchain; struct state* to; struct arc* outchain; } ;


 int COLORLESS ;
 int NOERR () ;
 scalar_t__ PLAIN ;
 int assert (int) ;
 int copyouts (struct nfa*,struct state*,struct state*) ;
 int cparc (struct nfa*,struct arc*,struct state*,struct state*) ;
 int freearc (struct nfa*,struct arc*) ;
 int newarc (struct nfa*,scalar_t__,scalar_t__,struct state*,struct state*) ;
 struct state* newstate (struct nfa*) ;
 int rainbow (struct nfa*,int ,scalar_t__,int ,struct state*,struct state*) ;

__attribute__((used)) static void
makesearch(struct vars *v,
     struct nfa *nfa)
{
 struct arc *a;
 struct arc *b;
 struct state *pre = nfa->pre;
 struct state *s;
 struct state *s2;
 struct state *slist;


 for (a = pre->outs; a != ((void*)0); a = a->outchain)
 {
  assert(a->type == PLAIN);
  if (a->co != nfa->bos[0] && a->co != nfa->bos[1])
   break;
 }
 if (a != ((void*)0))
 {

  rainbow(nfa, v->cm, PLAIN, COLORLESS, pre, pre);


  newarc(nfa, PLAIN, nfa->bos[0], pre, pre);
  newarc(nfa, PLAIN, nfa->bos[1], pre, pre);
 }
 slist = ((void*)0);
 for (a = pre->outs; a != ((void*)0); a = a->outchain)
 {
  s = a->to;
  for (b = s->ins; b != ((void*)0); b = b->inchain)
  {
   if (b->from != pre)
    break;
  }







  if (b != ((void*)0) && s->tmp == ((void*)0))
  {
   s->tmp = (slist != ((void*)0)) ? slist : s;
   slist = s;
  }
 }


 for (s = slist; s != ((void*)0); s = s2)
 {
  s2 = newstate(nfa);
  NOERR();
  copyouts(nfa, s, s2);
  NOERR();
  for (a = s->ins; a != ((void*)0); a = b)
  {
   b = a->inchain;
   if (a->from != pre)
   {
    cparc(nfa, a, a->from, s2);
    freearc(nfa, a);
   }
  }
  s2 = (s->tmp != s) ? s->tmp : ((void*)0);
  s->tmp = ((void*)0);
 }
}
