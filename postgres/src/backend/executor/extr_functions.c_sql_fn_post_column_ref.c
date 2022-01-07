
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int location; int fields; } ;
struct TYPE_9__ {int p_last_srf; int p_ref_hook_state; } ;
struct TYPE_8__ {int fname; } ;
typedef TYPE_1__* SQLFunctionParseInfoPtr ;
typedef TYPE_2__ ParseState ;
typedef int Node ;
typedef TYPE_3__ ColumnRef ;


 int A_Star ;
 int Assert (scalar_t__) ;
 scalar_t__ IsA (int *,int ) ;
 int * ParseFuncOrColumn (TYPE_2__*,int ,int ,int ,int *,int,int ) ;
 int String ;
 scalar_t__ linitial (int ) ;
 int list_length (int ) ;
 int list_make1 (int *) ;
 int * llast (int ) ;
 scalar_t__ lsecond (int ) ;
 scalar_t__ lthird (int ) ;
 int * sql_fn_resolve_param_name (TYPE_1__*,char const*,int ) ;
 char* strVal (int *) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static Node *
sql_fn_post_column_ref(ParseState *pstate, ColumnRef *cref, Node *var)
{
 SQLFunctionParseInfoPtr pinfo = (SQLFunctionParseInfoPtr) pstate->p_ref_hook_state;
 int nnames;
 Node *field1;
 Node *subfield = ((void*)0);
 const char *name1;
 const char *name2 = ((void*)0);
 Node *param;






 if (var != ((void*)0))
  return ((void*)0);
 nnames = list_length(cref->fields);

 if (nnames > 3)
  return ((void*)0);

 if (IsA(llast(cref->fields), A_Star))
  nnames--;

 field1 = (Node *) linitial(cref->fields);
 Assert(IsA(field1, String));
 name1 = strVal(field1);
 if (nnames > 1)
 {
  subfield = (Node *) lsecond(cref->fields);
  Assert(IsA(subfield, String));
  name2 = strVal(subfield);
 }

 if (nnames == 3)
 {





  if (strcmp(name1, pinfo->fname) != 0)
   return ((void*)0);

  param = sql_fn_resolve_param_name(pinfo, name2, cref->location);

  subfield = (Node *) lthird(cref->fields);
  Assert(IsA(subfield, String));
 }
 else if (nnames == 2 && strcmp(name1, pinfo->fname) == 0)
 {




  param = sql_fn_resolve_param_name(pinfo, name2, cref->location);

  if (param)
  {

   subfield = ((void*)0);
  }
  else
  {

   param = sql_fn_resolve_param_name(pinfo, name1, cref->location);
  }
 }
 else
 {

  param = sql_fn_resolve_param_name(pinfo, name1, cref->location);
 }

 if (!param)
  return ((void*)0);

 if (subfield)
 {





  param = ParseFuncOrColumn(pstate,
          list_make1(subfield),
          list_make1(param),
          pstate->p_last_srf,
          ((void*)0),
          0,
          cref->location);
 }

 return param;
}
