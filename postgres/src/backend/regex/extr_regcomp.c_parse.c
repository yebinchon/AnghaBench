
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vars {int nfa; } ;
struct subre {int flags; char op; struct subre* right; struct subre* left; } ;
struct state {int dummy; } ;


 scalar_t__ EAT (char) ;
 int EMPTYARC (struct state*,struct state*) ;
 int EOS ;
 int ERR (int ) ;
 int LONGER ;
 int MESSY (int) ;
 int NOERRN () ;
 int REG_EPAREN ;
 scalar_t__ SEE (int) ;
 int UP (int) ;
 int assert (int) ;
 int freesubre (struct vars*,struct subre*) ;
 struct state* newstate (int ) ;
 struct subre* parsebranch (struct vars*,int,int,struct state*,struct state*,int ) ;
 void* subre (struct vars*,char,int ,struct state*,struct state*) ;

__attribute__((used)) static struct subre *
parse(struct vars *v,
   int stopper,
   int type,
   struct state *init,
   struct state *final)
{
 struct state *left;
 struct state *right;
 struct subre *branches;
 struct subre *branch;
 struct subre *t;
 int firstbranch;

 assert(stopper == ')' || stopper == EOS);

 branches = subre(v, '|', LONGER, init, final);
 NOERRN();
 branch = branches;
 firstbranch = 1;
 do
 {
  if (!firstbranch)
  {

   branch->right = subre(v, '|', LONGER, init, final);
   NOERRN();
   branch = branch->right;
  }
  firstbranch = 0;
  left = newstate(v->nfa);
  right = newstate(v->nfa);
  NOERRN();
  EMPTYARC(init, left);
  EMPTYARC(right, final);
  NOERRN();
  branch->left = parsebranch(v, stopper, type, left, right, 0);
  NOERRN();
  branch->flags |= UP(branch->flags | branch->left->flags);
  if ((branch->flags & ~branches->flags) != 0)
   for (t = branches; t != branch; t = t->right)
    t->flags |= branch->flags;
 } while (EAT('|'));
 assert(SEE(stopper) || SEE(EOS));

 if (!SEE(stopper))
 {
  assert(stopper == ')' && SEE(EOS));
  ERR(REG_EPAREN);
 }


 if (branch == branches)
 {
  assert(branch->right == ((void*)0));
  t = branch->left;
  branch->left = ((void*)0);
  freesubre(v, branches);
  branches = t;
 }
 else if (!MESSY(branches->flags))
 {
  freesubre(v, branches->left);
  branches->left = ((void*)0);
  freesubre(v, branches->right);
  branches->right = ((void*)0);
  branches->op = '=';
 }

 return branches;
}
