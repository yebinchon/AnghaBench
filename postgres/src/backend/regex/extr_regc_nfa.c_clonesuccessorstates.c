
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct state {int no; int nins; struct state* tmp; struct arc* outs; TYPE_2__* ins; } ;
struct nfa {TYPE_1__* v; } ;
struct arc {scalar_t__ type; scalar_t__ co; struct state* to; struct arc* outchain; } ;
struct TYPE_4__ {scalar_t__ type; scalar_t__ co; struct state* from; } ;
struct TYPE_3__ {int re; } ;


 int FREE (char*) ;
 scalar_t__ MALLOC (int) ;
 int NERR (int ) ;
 int NISERR () ;
 int REG_ESPACE ;
 int REG_ETOOBIG ;
 scalar_t__ STACK_TOO_DEEP (int ) ;
 int assert (int) ;
 int cparc (struct nfa*,struct arc*,struct state*,struct state*) ;
 int dropstate (struct nfa*,struct state*) ;
 scalar_t__ hasconstraintout (struct state*) ;
 scalar_t__ isconstraintarc (struct arc*) ;
 int memcpy (char*,char*,int) ;
 int memset (char*,int ,int) ;
 struct state* newstate (struct nfa*) ;

__attribute__((used)) static void
clonesuccessorstates(struct nfa *nfa,
      struct state *ssource,
      struct state *sclone,
      struct state *spredecessor,
      struct arc *refarc,
      char *curdonemap,
      char *outerdonemap,
      int nstates)
{
 char *donemap;
 struct arc *a;


 if (STACK_TOO_DEEP(nfa->v->re))
 {
  NERR(REG_ETOOBIG);
  return;
 }


 donemap = curdonemap;
 if (donemap == ((void*)0))
 {
  donemap = (char *) MALLOC(nstates * sizeof(char));
  if (donemap == ((void*)0))
  {
   NERR(REG_ESPACE);
   return;
  }

  if (outerdonemap != ((void*)0))
  {






   memcpy(donemap, outerdonemap, nstates * sizeof(char));
  }
  else
  {

   memset(donemap, 0, nstates * sizeof(char));
   assert(spredecessor->no < nstates);
   donemap[spredecessor->no] = 1;
  }
 }


 assert(ssource->no < nstates);
 assert(donemap[ssource->no] == 0);
 donemap[ssource->no] = 1;
 for (a = ssource->outs; a != ((void*)0) && !NISERR(); a = a->outchain)
 {
  struct state *sto = a->to;
  if (isconstraintarc(a) && hasconstraintout(sto))
  {
   struct state *prevclone;
   int canmerge;
   struct arc *a2;





   assert(sto->no < nstates);
   if (donemap[sto->no] != 0)
    continue;





   prevclone = ((void*)0);
   for (a2 = sclone->outs; a2 != ((void*)0); a2 = a2->outchain)
   {
    if (a2->to->tmp == sto)
    {
     prevclone = a2->to;
     break;
    }
   }







   if (refarc && a->type == refarc->type && a->co == refarc->co)
    canmerge = 1;
   else
   {
    struct state *s;

    canmerge = 0;
    for (s = sclone; s->ins; s = s->ins->from)
    {
     if (s->nins == 1 &&
      a->type == s->ins->type && a->co == s->ins->co)
     {
      canmerge = 1;
      break;
     }
    }
   }

   if (canmerge)
   {






    if (prevclone)
     dropstate(nfa, prevclone);


    clonesuccessorstates(nfa,
          sto,
          sclone,
          spredecessor,
          refarc,
          donemap,
          outerdonemap,
          nstates);

    assert(NISERR() || donemap[sto->no] == 1);
   }
   else if (prevclone)
   {




    cparc(nfa, a, sclone, prevclone);
   }
   else
   {



    struct state *stoclone;

    stoclone = newstate(nfa);
    if (stoclone == ((void*)0))
    {
     assert(NISERR());
     break;
    }

    stoclone->tmp = sto;

    cparc(nfa, a, sclone, stoclone);
   }
  }
  else
  {




   cparc(nfa, a, sclone, sto);
  }
 }
 if (curdonemap == ((void*)0))
 {
  for (a = sclone->outs; a != ((void*)0) && !NISERR(); a = a->outchain)
  {
   struct state *stoclone = a->to;
   struct state *sto = stoclone->tmp;

   if (sto != ((void*)0))
   {
    stoclone->tmp = ((void*)0);
    clonesuccessorstates(nfa,
          sto,
          stoclone,
          spredecessor,
          refarc,
          ((void*)0),
          donemap,
          nstates);
   }
  }


  FREE(donemap);
 }
}
