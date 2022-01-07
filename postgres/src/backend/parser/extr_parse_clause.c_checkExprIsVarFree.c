
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ParseState ;
typedef int Node ;


 int ERRCODE_INVALID_COLUMN_REFERENCE ;
 int ERROR ;
 scalar_t__ contain_vars_of_level (int *,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;
 int locate_var_of_level (int *,int ) ;
 int parser_errposition (int *,int ) ;

__attribute__((used)) static void
checkExprIsVarFree(ParseState *pstate, Node *n, const char *constructName)
{
 if (contain_vars_of_level(n, 0))
 {
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_COLUMN_REFERENCE),

     errmsg("argument of %s must not contain variables",
      constructName),
     parser_errposition(pstate,
         locate_var_of_level(n, 0))));
 }
}
