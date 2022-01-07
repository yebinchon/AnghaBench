
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RawStmt ;
typedef int QueryEnvironment ;
typedef int Query ;
typedef int Oid ;
typedef int List ;


 int ResetUsage () ;
 int ShowUsage (char*) ;
 int TRACE_POSTGRESQL_QUERY_REWRITE_DONE (char const*) ;
 int TRACE_POSTGRESQL_QUERY_REWRITE_START (char const*) ;
 scalar_t__ log_parser_stats ;
 int * parse_analyze (int *,char const*,int *,int,int *) ;
 int * pg_rewrite_query (int *) ;

List *
pg_analyze_and_rewrite(RawStmt *parsetree, const char *query_string,
        Oid *paramTypes, int numParams,
        QueryEnvironment *queryEnv)
{
 Query *query;
 List *querytree_list;

 TRACE_POSTGRESQL_QUERY_REWRITE_START(query_string);




 if (log_parser_stats)
  ResetUsage();

 query = parse_analyze(parsetree, query_string, paramTypes, numParams,
        queryEnv);

 if (log_parser_stats)
  ShowUsage("PARSE ANALYSIS STATISTICS");




 querytree_list = pg_rewrite_query(query);

 TRACE_POSTGRESQL_QUERY_REWRITE_DONE(query_string);

 return querytree_list;
}
