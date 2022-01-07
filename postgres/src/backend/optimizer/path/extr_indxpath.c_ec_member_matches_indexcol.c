
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int indexcol; TYPE_2__* index; } ;
typedef TYPE_1__ ec_member_matches_arg ;
struct TYPE_11__ {int ec_collation; int ec_opfamilies; } ;
struct TYPE_10__ {scalar_t__ em_expr; } ;
struct TYPE_9__ {int nkeycolumns; scalar_t__ relam; int * indexcollations; int * opfamily; } ;
typedef int RelOptInfo ;
typedef int PlannerInfo ;
typedef int Oid ;
typedef int Node ;
typedef TYPE_2__ IndexOptInfo ;
typedef TYPE_3__ EquivalenceMember ;
typedef TYPE_4__ EquivalenceClass ;


 int Assert (int) ;
 scalar_t__ BTREE_AM_OID ;
 int IndexCollMatchesExprColl (int ,int ) ;
 int list_member_oid (int ,int ) ;
 int match_index_to_operand (int *,int,TYPE_2__*) ;

__attribute__((used)) static bool
ec_member_matches_indexcol(PlannerInfo *root, RelOptInfo *rel,
         EquivalenceClass *ec, EquivalenceMember *em,
         void *arg)
{
 IndexOptInfo *index = ((ec_member_matches_arg *) arg)->index;
 int indexcol = ((ec_member_matches_arg *) arg)->indexcol;
 Oid curFamily;
 Oid curCollation;

 Assert(indexcol < index->nkeycolumns);

 curFamily = index->opfamily[indexcol];
 curCollation = index->indexcollations[indexcol];
 if (index->relam == BTREE_AM_OID &&
  !list_member_oid(ec->ec_opfamilies, curFamily))
  return 0;


 if (!IndexCollMatchesExprColl(curCollation, ec->ec_collation))
  return 0;

 return match_index_to_operand((Node *) em->em_expr, indexcol, index);
}
