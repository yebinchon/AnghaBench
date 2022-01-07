
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;
typedef int List ;


 char* deparse_expression_pretty (int *,int *,int,int,int ,int ) ;

char *
deparse_expression(Node *expr, List *dpcontext,
       bool forceprefix, bool showimplicit)
{
 return deparse_expression_pretty(expr, dpcontext, forceprefix,
          showimplicit, 0, 0);
}
