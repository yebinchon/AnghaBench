
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ conname; scalar_t__ whereClause; scalar_t__ indexElems; } ;
struct TYPE_15__ {scalar_t__ action; TYPE_4__* infer; } ;
struct TYPE_14__ {TYPE_1__* p_target_rangetblentry; int p_target_relation; int * p_namespace; } ;
struct TYPE_13__ {int selectedCols; int requiredPerms; } ;
typedef TYPE_1__ RangeTblEntry ;
typedef TYPE_2__ ParseState ;
typedef TYPE_3__ OnConflictClause ;
typedef int Oid ;
typedef int Node ;
typedef int List ;
typedef TYPE_4__ InferClause ;
typedef int Bitmapset ;


 int ACL_SELECT ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_SYNTAX_ERROR ;
 int ERROR ;
 int EXPR_KIND_INDEX_PREDICATE ;
 int InvalidOid ;
 scalar_t__ IsCatalogRelation (int ) ;
 void* NIL ;
 scalar_t__ ONCONFLICT_UPDATE ;
 int RelationGetRelationName (int ) ;
 int RelationGetRelid (int ) ;
 scalar_t__ RelationIsUsedAsCatalogTable (int ) ;
 int addRTEtoQuery (TYPE_2__*,TYPE_1__*,int,int,int) ;
 int bms_add_members (int ,int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,...) ;
 int exprLocation (int *) ;
 int * get_relation_constraint_attnos (int ,scalar_t__,int,int *) ;
 int parser_errposition (TYPE_2__*,int ) ;
 int * resolve_unique_index_expr (TYPE_2__*,TYPE_4__*,int ) ;
 int * transformExpr (TYPE_2__*,scalar_t__,int ) ;

void
transformOnConflictArbiter(ParseState *pstate,
         OnConflictClause *onConflictClause,
         List **arbiterExpr, Node **arbiterWhere,
         Oid *constraint)
{
 InferClause *infer = onConflictClause->infer;

 *arbiterExpr = NIL;
 *arbiterWhere = ((void*)0);
 *constraint = InvalidOid;

 if (onConflictClause->action == ONCONFLICT_UPDATE && !infer)
  ereport(ERROR,
    (errcode(ERRCODE_SYNTAX_ERROR),
     errmsg("ON CONFLICT DO UPDATE requires inference specification or constraint name"),
     errhint("For example, ON CONFLICT (column_name)."),
     parser_errposition(pstate,
         exprLocation((Node *) onConflictClause))));





 if (IsCatalogRelation(pstate->p_target_relation))
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("ON CONFLICT is not supported with system catalog tables"),
     parser_errposition(pstate,
         exprLocation((Node *) onConflictClause))));


 if (RelationIsUsedAsCatalogTable(pstate->p_target_relation))
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("ON CONFLICT is not supported on table \"%s\" used as a catalog table",
      RelationGetRelationName(pstate->p_target_relation)),
     parser_errposition(pstate,
         exprLocation((Node *) onConflictClause))));


 if (infer)
 {
  List *save_namespace;





  save_namespace = pstate->p_namespace;
  pstate->p_namespace = NIL;
  addRTEtoQuery(pstate, pstate->p_target_rangetblentry,
       0, 0, 1);

  if (infer->indexElems)
   *arbiterExpr = resolve_unique_index_expr(pstate, infer,
              pstate->p_target_relation);





  if (infer->whereClause)
   *arbiterWhere = transformExpr(pstate, infer->whereClause,
            EXPR_KIND_INDEX_PREDICATE);

  pstate->p_namespace = save_namespace;







  if (infer->conname)
  {
   Oid relid = RelationGetRelid(pstate->p_target_relation);
   RangeTblEntry *rte = pstate->p_target_rangetblentry;
   Bitmapset *conattnos;

   conattnos = get_relation_constraint_attnos(relid, infer->conname,
                0, constraint);


   rte->requiredPerms |= ACL_SELECT;

   rte->selectedCols = bms_add_members(rte->selectedCols, conattnos);
  }
 }
}
