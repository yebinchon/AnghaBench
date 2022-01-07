
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vars {int nfa; } ;
struct subre {int dummy; } ;
struct state {int dummy; } ;


 int EMPTYARC (struct state*,struct state*) ;
 int EOS ;
 int NOERRN () ;
 int NOTE (int ) ;
 int REG_UUNSPEC ;
 int SEE (int) ;
 int assert (int) ;
 int moveins (int ,struct state*,struct state*) ;
 struct state* newstate (int ) ;
 int parseqatom (struct vars*,int,int,struct state*,struct state*,struct subre*) ;
 struct subre* subre (struct vars*,char,int ,struct state*,struct state*) ;

__attribute__((used)) static struct subre *
parsebranch(struct vars *v,
   int stopper,
   int type,
   struct state *left,
   struct state *right,
   int partial)
{
 struct state *lp;
 int seencontent;
 struct subre *t;

 lp = left;
 seencontent = 0;
 t = subre(v, '=', 0, left, right);
 NOERRN();
 while (!SEE('|') && !SEE(stopper) && !SEE(EOS))
 {
  if (seencontent)
  {
   lp = newstate(v->nfa);
   NOERRN();
   moveins(v->nfa, right, lp);
  }
  seencontent = 1;


  parseqatom(v, stopper, type, lp, right, t);
  NOERRN();
 }

 if (!seencontent)
 {
  if (!partial)
   NOTE(REG_UUNSPEC);
  assert(lp == left);
  EMPTYARC(left, right);
 }

 return t;
}
