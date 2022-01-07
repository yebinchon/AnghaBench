
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {char const* p_sourcetext; int * p_queryEnv; } ;
typedef int RawStmt ;
typedef int QueryEnvironment ;
typedef int Query ;
typedef TYPE_1__ ParseState ;
typedef int Oid ;


 int Assert (int ) ;
 int free_parsestate (TYPE_1__*) ;
 TYPE_1__* make_parsestate (int *) ;
 int parse_fixed_parameters (TYPE_1__*,int *,int) ;
 int post_parse_analyze_hook (TYPE_1__*,int *) ;
 int stub1 (TYPE_1__*,int *) ;
 int * transformTopLevelStmt (TYPE_1__*,int *) ;

Query *
parse_analyze(RawStmt *parseTree, const char *sourceText,
     Oid *paramTypes, int numParams,
     QueryEnvironment *queryEnv)
{
 ParseState *pstate = make_parsestate(((void*)0));
 Query *query;

 Assert(sourceText != ((void*)0));

 pstate->p_sourcetext = sourceText;

 if (numParams > 0)
  parse_fixed_parameters(pstate, paramTypes, numParams);

 pstate->p_queryEnv = queryEnv;

 query = transformTopLevelStmt(pstate, parseTree);

 if (post_parse_analyze_hook)
  (*post_parse_analyze_hook) (pstate, query);

 free_parsestate(pstate);

 return query;
}
