
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ YYCODETYPE ;
typedef size_t YYACTIONTYPE ;


 scalar_t__ YYNOCODE ;
 int YY_ACTTAB_COUNT ;
 size_t YY_REDUCE_COUNT ;
 int assert (int) ;
 size_t* yy_action ;
 size_t* yy_default ;
 scalar_t__* yy_lookahead ;
 int* yy_reduce_ofst ;

__attribute__((used)) static YYACTIONTYPE yy_find_reduce_action(
  YYACTIONTYPE stateno,
  YYCODETYPE iLookAhead
){
  int i;





  assert( stateno<=YY_REDUCE_COUNT );

  i = yy_reduce_ofst[stateno];
  assert( iLookAhead!=YYNOCODE );
  i += iLookAhead;





  assert( i>=0 && i<YY_ACTTAB_COUNT );
  assert( yy_lookahead[i]==iLookAhead );

  return yy_action[i];
}
