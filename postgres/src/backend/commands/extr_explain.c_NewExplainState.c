
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int costs; int str; } ;
typedef TYPE_1__ ExplainState ;


 int makeStringInfo () ;
 scalar_t__ palloc0 (int) ;

ExplainState *
NewExplainState(void)
{
 ExplainState *es = (ExplainState *) palloc0(sizeof(ExplainState));


 es->costs = 1;

 es->str = makeStringInfo();

 return es;
}
