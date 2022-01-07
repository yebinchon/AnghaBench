
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * es_sourceText; } ;
typedef TYPE_1__ EState ;


 int errposition (int) ;
 int pg_mbstrlen_with_len (int *,int) ;

int
executor_errposition(EState *estate, int location)
{
 int pos;


 if (location < 0)
  return 0;

 if (estate == ((void*)0) || estate->es_sourceText == ((void*)0))
  return 0;

 pos = pg_mbstrlen_with_len(estate->es_sourceText, location) + 1;

 return errposition(pos);
}
