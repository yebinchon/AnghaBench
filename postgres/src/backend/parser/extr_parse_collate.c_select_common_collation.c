
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ strength; int location; int collation; int location2; int * pstate; int collation2; } ;
typedef TYPE_1__ assign_collations_context ;
typedef int ParseState ;
typedef int Oid ;
typedef int Node ;
typedef int List ;


 scalar_t__ COLLATE_CONFLICT ;
 scalar_t__ COLLATE_NONE ;
 int ERRCODE_COLLATION_MISMATCH ;
 int ERROR ;
 int InvalidOid ;
 int assign_collations_walker (int *,TYPE_1__*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,int ,int ) ;
 int get_collation_name (int ) ;
 int parser_errposition (int *,int ) ;

Oid
select_common_collation(ParseState *pstate, List *exprs, bool none_ok)
{
 assign_collations_context context;


 context.pstate = pstate;
 context.collation = InvalidOid;
 context.strength = COLLATE_NONE;
 context.location = -1;


 (void) assign_collations_walker((Node *) exprs, &context);


 if (context.strength == COLLATE_CONFLICT)
 {
  if (none_ok)
   return InvalidOid;
  ereport(ERROR,
    (errcode(ERRCODE_COLLATION_MISMATCH),
     errmsg("collation mismatch between implicit collations \"%s\" and \"%s\"",
      get_collation_name(context.collation),
      get_collation_name(context.collation2)),
     errhint("You can choose the collation by applying the COLLATE clause to one or both expressions."),
     parser_errposition(context.pstate, context.location2)));
 }






 return context.collation;
}
