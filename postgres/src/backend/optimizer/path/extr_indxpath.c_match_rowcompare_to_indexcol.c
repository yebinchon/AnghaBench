
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ relam; scalar_t__* opfamily; scalar_t__* indexcollations; TYPE_1__* rel; } ;
struct TYPE_12__ {scalar_t__ clause; } ;
struct TYPE_11__ {int inputcollids; int opnos; int rargs; int largs; } ;
struct TYPE_10__ {int relid; } ;
typedef TYPE_2__ RowCompareExpr ;
typedef TYPE_3__ RestrictInfo ;
typedef scalar_t__ Oid ;
typedef int Node ;
typedef TYPE_4__ IndexOptInfo ;
typedef int IndexClause ;
typedef int Index ;






 scalar_t__ BTREE_AM_OID ;
 int IndexCollMatchesExprColl (scalar_t__,scalar_t__) ;
 scalar_t__ InvalidOid ;
 int bms_is_member (int ,int ) ;
 int contain_volatile_functions (int *) ;
 int * expand_indexqual_rowcompare (TYPE_3__*,int,TYPE_4__*,scalar_t__,int) ;
 scalar_t__ get_commutator (scalar_t__) ;
 int get_op_opfamily_strategy (scalar_t__,scalar_t__) ;
 scalar_t__ linitial (int ) ;
 scalar_t__ linitial_oid (int ) ;
 scalar_t__ match_index_to_operand (int *,int,TYPE_4__*) ;
 int pull_varnos (int *) ;

__attribute__((used)) static IndexClause *
match_rowcompare_to_indexcol(RestrictInfo *rinfo,
        int indexcol,
        IndexOptInfo *index)
{
 RowCompareExpr *clause = (RowCompareExpr *) rinfo->clause;
 Index index_relid;
 Oid opfamily;
 Oid idxcollation;
 Node *leftop,
      *rightop;
 bool var_on_left;
 Oid expr_op;
 Oid expr_coll;


 if (index->relam != BTREE_AM_OID)
  return ((void*)0);

 index_relid = index->rel->relid;
 opfamily = index->opfamily[indexcol];
 idxcollation = index->indexcollations[indexcol];
 leftop = (Node *) linitial(clause->largs);
 rightop = (Node *) linitial(clause->rargs);
 expr_op = linitial_oid(clause->opnos);
 expr_coll = linitial_oid(clause->inputcollids);


 if (!IndexCollMatchesExprColl(idxcollation, expr_coll))
  return ((void*)0);




 if (match_index_to_operand(leftop, indexcol, index) &&
  !bms_is_member(index_relid, pull_varnos(rightop)) &&
  !contain_volatile_functions(rightop))
 {

  var_on_left = 1;
 }
 else if (match_index_to_operand(rightop, indexcol, index) &&
    !bms_is_member(index_relid, pull_varnos(leftop)) &&
    !contain_volatile_functions(leftop))
 {

  expr_op = get_commutator(expr_op);
  if (expr_op == InvalidOid)
   return ((void*)0);
  var_on_left = 0;
 }
 else
  return ((void*)0);


 switch (get_op_opfamily_strategy(expr_op, opfamily))
 {
  case 128:
  case 129:
  case 131:
  case 130:
   return expand_indexqual_rowcompare(rinfo,
              indexcol,
              index,
              expr_op,
              var_on_left);
 }

 return ((void*)0);
}
