
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * partexprs; } ;
struct TYPE_5__ {scalar_t__ clause; } ;
typedef TYPE_1__ RestrictInfo ;
typedef TYPE_2__ RelOptInfo ;
typedef int Node ;
typedef int Expr ;


 scalar_t__ equal (int *,int *) ;
 scalar_t__ get_notclausearg (int *) ;
 scalar_t__ is_notclause (int *) ;
 scalar_t__ linitial (int ) ;

__attribute__((used)) static bool
matches_boolean_partition_clause(RestrictInfo *rinfo,
         RelOptInfo *partrel, int partkeycol)
{
 Node *clause = (Node *) rinfo->clause;
 Node *partexpr = (Node *) linitial(partrel->partexprs[partkeycol]);


 if (equal(partexpr, clause))
  return 1;

 else if (is_notclause(clause))
 {
  Node *arg = (Node *) get_notclausearg((Expr *) clause);

  if (equal(partexpr, arg))
   return 1;
 }

 return 0;
}
