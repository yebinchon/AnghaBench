
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ParseState ;
typedef int Node ;


 int exprLocation (int *) ;
 int parser_errposition (int *,int) ;

int
parser_coercion_errposition(ParseState *pstate,
       int coerce_location,
       Node *input_expr)
{
 if (coerce_location >= 0)
  return parser_errposition(pstate, coerce_location);
 else
  return parser_errposition(pstate, exprLocation(input_expr));
}
