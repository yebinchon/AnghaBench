
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vars {int nfa; int cm; } ;
struct subre {int cnfa; int end; int * begin; } ;
struct nfa {int final; int init; } ;
typedef int idbuf ;
typedef int FILE ;


 int ISERR () ;
 int NOERRZ () ;
 int assert (int ) ;
 int compact (struct nfa*,int *) ;
 int dupnfa (struct nfa*,int *,int ,int ,int ) ;
 int fprintf (int *,char*,char*) ;
 int freenfa (struct nfa*) ;
 int makesearch (struct vars*,struct nfa*) ;
 struct nfa* newnfa (struct vars*,int ,int ) ;
 long optimize (struct nfa*,int *) ;
 int specialcolors (struct nfa*) ;
 char* stid (struct subre*,char*,int) ;

__attribute__((used)) static long
nfanode(struct vars *v,
  struct subre *t,
  int converttosearch,
  FILE *f)
{
 struct nfa *nfa;
 long ret = 0;

 assert(t->begin != ((void*)0));
 nfa = newnfa(v, v->cm, v->nfa);
 NOERRZ();
 dupnfa(nfa, t->begin, t->end, nfa->init, nfa->final);
 if (!ISERR())
  specialcolors(nfa);
 if (!ISERR())
  ret = optimize(nfa, f);
 if (converttosearch && !ISERR())
  makesearch(v, nfa);
 if (!ISERR())
  compact(nfa, &t->cnfa);

 freenfa(nfa);
 return ret;
}
