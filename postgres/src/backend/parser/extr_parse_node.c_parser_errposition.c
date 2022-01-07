
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * p_sourcetext; } ;
typedef TYPE_1__ ParseState ;


 int errposition (int) ;
 int pg_mbstrlen_with_len (int *,int) ;

int
parser_errposition(ParseState *pstate, int location)
{
 int pos;


 if (location < 0)
  return 0;

 if (pstate == ((void*)0) || pstate->p_sourcetext == ((void*)0))
  return 0;

 pos = pg_mbstrlen_with_len(pstate->p_sourcetext, location) + 1;

 return errposition(pos);
}
