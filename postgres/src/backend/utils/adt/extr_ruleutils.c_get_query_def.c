
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int deparse_namespace ;
struct TYPE_16__ {int varprefix; int prettyFlags; int wrapColumn; int indentLevel; int special_exprkind; int * windowTList; int * windowClause; int namespaces; int buf; } ;
typedef TYPE_1__ deparse_context ;
typedef int TupleDesc ;
struct TYPE_17__ {int commandType; int rtable; } ;
typedef int StringInfo ;
typedef TYPE_2__ Query ;
typedef int List ;


 int AcquireRewriteLocks (TYPE_2__*,int,int) ;
 int CHECK_FOR_INTERRUPTS () ;






 int ERROR ;
 int EXPR_KIND_NONE ;
 int * NIL ;
 int appendStringInfoString (int ,char*) ;
 int check_stack_depth () ;
 int elog (int ,char*,int) ;
 int get_delete_query_def (TYPE_2__*,TYPE_1__*) ;
 int get_insert_query_def (TYPE_2__*,TYPE_1__*) ;
 int get_select_query_def (TYPE_2__*,TYPE_1__*,int ) ;
 int get_update_query_def (TYPE_2__*,TYPE_1__*) ;
 int get_utility_query_def (TYPE_2__*,TYPE_1__*) ;
 int lcons (int *,int ) ;
 int list_copy (int *) ;
 int list_length (int ) ;
 int set_deparse_for_query (int *,TYPE_2__*,int *) ;

__attribute__((used)) static void
get_query_def(Query *query, StringInfo buf, List *parentnamespace,
     TupleDesc resultDesc,
     int prettyFlags, int wrapColumn, int startIndent)
{
 deparse_context context;
 deparse_namespace dpns;


 CHECK_FOR_INTERRUPTS();
 check_stack_depth();
 AcquireRewriteLocks(query, 0, 0);

 context.buf = buf;
 context.namespaces = lcons(&dpns, list_copy(parentnamespace));
 context.windowClause = NIL;
 context.windowTList = NIL;
 context.varprefix = (parentnamespace != NIL ||
       list_length(query->rtable) != 1);
 context.prettyFlags = prettyFlags;
 context.wrapColumn = wrapColumn;
 context.indentLevel = startIndent;
 context.special_exprkind = EXPR_KIND_NONE;

 set_deparse_for_query(&dpns, query, parentnamespace);

 switch (query->commandType)
 {
  case 130:
   get_select_query_def(query, &context, resultDesc);
   break;

  case 129:
   get_update_query_def(query, &context);
   break;

  case 132:
   get_insert_query_def(query, &context);
   break;

  case 133:
   get_delete_query_def(query, &context);
   break;

  case 131:
   appendStringInfoString(buf, "NOTHING");
   break;

  case 128:
   get_utility_query_def(query, &context);
   break;

  default:
   elog(ERROR, "unrecognized query command type: %d",
     query->commandType);
   break;
 }
}
