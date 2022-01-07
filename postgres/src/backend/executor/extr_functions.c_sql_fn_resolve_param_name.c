
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nargs; scalar_t__* argnames; } ;
typedef TYPE_1__* SQLFunctionParseInfoPtr ;
typedef int Node ;


 int * sql_fn_make_param (TYPE_1__*,int,int) ;
 scalar_t__ strcmp (scalar_t__,char const*) ;

__attribute__((used)) static Node *
sql_fn_resolve_param_name(SQLFunctionParseInfoPtr pinfo,
        const char *paramname, int location)
{
 int i;

 if (pinfo->argnames == ((void*)0))
  return ((void*)0);

 for (i = 0; i < pinfo->nargs; i++)
 {
  if (pinfo->argnames[i] && strcmp(pinfo->argnames[i], paramname) == 0)
   return sql_fn_make_param(pinfo, i + 1, location);
 }

 return ((void*)0);
}
