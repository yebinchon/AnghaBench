
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int List ;


 int ResetUsage () ;
 int ShowUsage (char*) ;
 int TRACE_POSTGRESQL_QUERY_PARSE_DONE (char const*) ;
 int TRACE_POSTGRESQL_QUERY_PARSE_START (char const*) ;
 int WARNING ;
 int * copyObject (int *) ;
 int elog (int ,char*) ;
 int equal (int *,int *) ;
 scalar_t__ log_parser_stats ;
 int * raw_parser (char const*) ;

List *
pg_parse_query(const char *query_string)
{
 List *raw_parsetree_list;

 TRACE_POSTGRESQL_QUERY_PARSE_START(query_string);

 if (log_parser_stats)
  ResetUsage();

 raw_parsetree_list = raw_parser(query_string);

 if (log_parser_stats)
  ShowUsage("PARSER STATISTICS");
 TRACE_POSTGRESQL_QUERY_PARSE_DONE(query_string);

 return raw_parsetree_list;
}
