
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {char const* p_sourcetext; } ;
typedef int RawStmt ;
typedef int Query ;
typedef TYPE_1__ ParseState ;
typedef int Oid ;


 int Assert (int ) ;
 int check_variable_parameters (TYPE_1__*,int *) ;
 int free_parsestate (TYPE_1__*) ;
 TYPE_1__* make_parsestate (int *) ;
 int parse_variable_parameters (TYPE_1__*,int **,int*) ;
 int post_parse_analyze_hook (TYPE_1__*,int *) ;
 int stub1 (TYPE_1__*,int *) ;
 int * transformTopLevelStmt (TYPE_1__*,int *) ;

Query *
parse_analyze_varparams(RawStmt *parseTree, const char *sourceText,
      Oid **paramTypes, int *numParams)
{
 ParseState *pstate = make_parsestate(((void*)0));
 Query *query;

 Assert(sourceText != ((void*)0));

 pstate->p_sourcetext = sourceText;

 parse_variable_parameters(pstate, paramTypes, numParams);

 query = transformTopLevelStmt(pstate, parseTree);


 check_variable_parameters(pstate, query);

 if (post_parse_analyze_hook)
  (*post_parse_analyze_hook) (pstate, query);

 free_parsestate(pstate);

 return query;
}
