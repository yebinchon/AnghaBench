
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
typedef int Oid ;
typedef int Node ;
typedef int List ;


 int * NIL ;
 scalar_t__ OidIsValid (int ) ;
 int * deparse_context_for (char const*,int ) ;
 char* deparse_expression_pretty (int *,int *,int,int,int,int ) ;
 int pfree (char*) ;
 scalar_t__ stringToNode (char*) ;
 int * string_to_text (char*) ;
 char* text_to_cstring (int *) ;

__attribute__((used)) static text *
pg_get_expr_worker(text *expr, Oid relid, const char *relname, int prettyFlags)
{
 Node *node;
 List *context;
 char *exprstr;
 char *str;


 exprstr = text_to_cstring(expr);


 node = (Node *) stringToNode(exprstr);

 pfree(exprstr);


 if (OidIsValid(relid))
  context = deparse_context_for(relname, relid);
 else
  context = NIL;


 str = deparse_expression_pretty(node, context, 0, 0,
         prettyFlags, 0);

 return string_to_text(str);
}
