
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int have_lobound; scalar_t__ lobound; int have_hibound; scalar_t__ hibound; struct TYPE_3__* next; int * var; } ;
typedef scalar_t__ Selectivity ;
typedef TYPE_1__ RangeQueryClause ;
typedef int Node ;
typedef int Expr ;


 int equal (int *,int *) ;
 int * get_leftop (int *) ;
 int * get_rightop (int *) ;
 scalar_t__ palloc (int) ;

__attribute__((used)) static void
addRangeClause(RangeQueryClause **rqlist, Node *clause,
      bool varonleft, bool isLTsel, Selectivity s2)
{
 RangeQueryClause *rqelem;
 Node *var;
 bool is_lobound;

 if (varonleft)
 {
  var = get_leftop((Expr *) clause);
  is_lobound = !isLTsel;
 }
 else
 {
  var = get_rightop((Expr *) clause);
  is_lobound = isLTsel;
 }

 for (rqelem = *rqlist; rqelem; rqelem = rqelem->next)
 {




  if (!equal(var, rqelem->var))
   continue;

  if (is_lobound)
  {
   if (!rqelem->have_lobound)
   {
    rqelem->have_lobound = 1;
    rqelem->lobound = s2;
   }
   else
   {







    if (rqelem->lobound > s2)
     rqelem->lobound = s2;
   }
  }
  else
  {
   if (!rqelem->have_hibound)
   {
    rqelem->have_hibound = 1;
    rqelem->hibound = s2;
   }
   else
   {







    if (rqelem->hibound > s2)
     rqelem->hibound = s2;
   }
  }
  return;
 }


 rqelem = (RangeQueryClause *) palloc(sizeof(RangeQueryClause));
 rqelem->var = var;
 if (is_lobound)
 {
  rqelem->have_lobound = 1;
  rqelem->have_hibound = 0;
  rqelem->lobound = s2;
 }
 else
 {
  rqelem->have_lobound = 0;
  rqelem->have_hibound = 1;
  rqelem->hibound = s2;
 }
 rqelem->next = *rqlist;
 *rqlist = rqelem;
}
