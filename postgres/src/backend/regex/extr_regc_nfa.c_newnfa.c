
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vars {int dummy; } ;
struct nfa {void* post; void* final; struct colormap* cm; void* init; void* pre; struct nfa* parent; void** eos; void** bos; struct vars* v; scalar_t__ nstates; int * free; int * slast; int * states; } ;
struct colormap {int dummy; } ;


 void* COLORLESS ;
 int ERR (int ) ;
 scalar_t__ ISERR () ;
 scalar_t__ MALLOC (int) ;
 int PLAIN ;
 int REG_ESPACE ;
 int freenfa (struct nfa*) ;
 int newarc (struct nfa*,char,int,void*,void*) ;
 void* newfstate (struct nfa*,char) ;
 void* newstate (struct nfa*) ;
 int rainbow (struct nfa*,struct colormap*,int ,void*,void*,void*) ;

__attribute__((used)) static struct nfa *
newnfa(struct vars *v,
    struct colormap *cm,
    struct nfa *parent)
{
 struct nfa *nfa;

 nfa = (struct nfa *) MALLOC(sizeof(struct nfa));
 if (nfa == ((void*)0))
 {
  ERR(REG_ESPACE);
  return ((void*)0);
 }

 nfa->states = ((void*)0);
 nfa->slast = ((void*)0);
 nfa->free = ((void*)0);
 nfa->nstates = 0;
 nfa->cm = cm;
 nfa->v = v;
 nfa->bos[0] = nfa->bos[1] = COLORLESS;
 nfa->eos[0] = nfa->eos[1] = COLORLESS;
 nfa->parent = parent;
 nfa->post = newfstate(nfa, '@');
 nfa->pre = newfstate(nfa, '>');

 nfa->init = newstate(nfa);
 nfa->final = newstate(nfa);
 if (ISERR())
 {
  freenfa(nfa);
  return ((void*)0);
 }
 rainbow(nfa, nfa->cm, PLAIN, COLORLESS, nfa->pre, nfa->init);
 newarc(nfa, '^', 1, nfa->pre, nfa->init);
 newarc(nfa, '^', 0, nfa->pre, nfa->init);
 rainbow(nfa, nfa->cm, PLAIN, COLORLESS, nfa->final, nfa->post);
 newarc(nfa, '$', 1, nfa->final, nfa->post);
 newarc(nfa, '$', 0, nfa->final, nfa->post);

 if (ISERR())
 {
  freenfa(nfa);
  return ((void*)0);
 }
 return nfa;
}
