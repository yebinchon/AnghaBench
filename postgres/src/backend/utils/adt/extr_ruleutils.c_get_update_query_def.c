
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_23__ {int indentLevel; int buf; } ;
typedef TYPE_3__ deparse_context ;
struct TYPE_25__ {scalar_t__ returningList; TYPE_2__* jointree; int targetList; int rtable; int resultRelation; } ;
struct TYPE_24__ {scalar_t__ rtekind; TYPE_1__* alias; int relid; } ;
struct TYPE_22__ {int * quals; } ;
struct TYPE_21__ {int aliasname; } ;
typedef int StringInfo ;
typedef TYPE_4__ RangeTblEntry ;
typedef TYPE_5__ Query ;


 int Assert (int) ;
 int NIL ;
 int PRETTYINDENT_STD ;
 scalar_t__ PRETTY_INDENT (TYPE_3__*) ;
 scalar_t__ RTE_RELATION ;
 int appendContextKeyword (TYPE_3__*,char*,int ,int ,int) ;
 int appendStringInfo (int ,char*,int ,...) ;
 int appendStringInfoChar (int ,char) ;
 int appendStringInfoString (int ,char*) ;
 int generate_relation_name (int ,int ) ;
 int get_from_clause (TYPE_5__*,char*,TYPE_3__*) ;
 int get_rule_expr (int *,TYPE_3__*,int) ;
 int get_target_list (scalar_t__,TYPE_3__*,int *) ;
 int get_update_query_targetlist_def (TYPE_5__*,int ,TYPE_3__*,TYPE_4__*) ;
 int get_with_clause (TYPE_5__*,TYPE_3__*) ;
 int only_marker (TYPE_4__*) ;
 int quote_identifier (int ) ;
 TYPE_4__* rt_fetch (int ,int ) ;

__attribute__((used)) static void
get_update_query_def(Query *query, deparse_context *context)
{
 StringInfo buf = context->buf;
 RangeTblEntry *rte;


 get_with_clause(query, context);




 rte = rt_fetch(query->resultRelation, query->rtable);
 Assert(rte->rtekind == RTE_RELATION);
 if (PRETTY_INDENT(context))
 {
  appendStringInfoChar(buf, ' ');
  context->indentLevel += PRETTYINDENT_STD;
 }
 appendStringInfo(buf, "UPDATE %s%s",
      only_marker(rte),
      generate_relation_name(rte->relid, NIL));
 if (rte->alias != ((void*)0))
  appendStringInfo(buf, " %s",
       quote_identifier(rte->alias->aliasname));
 appendStringInfoString(buf, " SET ");


 get_update_query_targetlist_def(query, query->targetList, context, rte);


 get_from_clause(query, " FROM ", context);


 if (query->jointree->quals != ((void*)0))
 {
  appendContextKeyword(context, " WHERE ",
        -PRETTYINDENT_STD, PRETTYINDENT_STD, 1);
  get_rule_expr(query->jointree->quals, context, 0);
 }


 if (query->returningList)
 {
  appendContextKeyword(context, " RETURNING",
        -PRETTYINDENT_STD, PRETTYINDENT_STD, 1);
  get_target_list(query->returningList, context, ((void*)0));
 }
}
