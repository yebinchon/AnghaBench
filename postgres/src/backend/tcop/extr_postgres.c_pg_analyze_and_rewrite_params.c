
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {char const* p_sourcetext; int * p_queryEnv; } ;
typedef int RawStmt ;
typedef int QueryEnvironment ;
typedef int Query ;
typedef int (* ParserSetupHook ) (TYPE_1__*,void*) ;
typedef TYPE_1__ ParseState ;
typedef int List ;


 int Assert (int ) ;
 int ResetUsage () ;
 int ShowUsage (char*) ;
 int TRACE_POSTGRESQL_QUERY_REWRITE_DONE (char const*) ;
 int TRACE_POSTGRESQL_QUERY_REWRITE_START (char const*) ;
 int free_parsestate (TYPE_1__*) ;
 scalar_t__ log_parser_stats ;
 TYPE_1__* make_parsestate (int *) ;
 int * pg_rewrite_query (int *) ;
 int post_parse_analyze_hook (TYPE_1__*,int *) ;
 int stub1 (TYPE_1__*,void*) ;
 int stub2 (TYPE_1__*,int *) ;
 int * transformTopLevelStmt (TYPE_1__*,int *) ;

List *
pg_analyze_and_rewrite_params(RawStmt *parsetree,
         const char *query_string,
         ParserSetupHook parserSetup,
         void *parserSetupArg,
         QueryEnvironment *queryEnv)
{
 ParseState *pstate;
 Query *query;
 List *querytree_list;

 Assert(query_string != ((void*)0));

 TRACE_POSTGRESQL_QUERY_REWRITE_START(query_string);




 if (log_parser_stats)
  ResetUsage();

 pstate = make_parsestate(((void*)0));
 pstate->p_sourcetext = query_string;
 pstate->p_queryEnv = queryEnv;
 (*parserSetup) (pstate, parserSetupArg);

 query = transformTopLevelStmt(pstate, parsetree);

 if (post_parse_analyze_hook)
  (*post_parse_analyze_hook) (pstate, query);

 free_parsestate(pstate);

 if (log_parser_stats)
  ShowUsage("PARSE ANALYSIS STATISTICS");




 querytree_list = pg_rewrite_query(query);

 TRACE_POSTGRESQL_QUERY_REWRITE_DONE(query_string);

 return querytree_list;
}
