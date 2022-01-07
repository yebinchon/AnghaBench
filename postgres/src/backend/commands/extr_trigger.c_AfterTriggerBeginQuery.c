
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int query_depth; } ;


 TYPE_1__ afterTriggers ;

void
AfterTriggerBeginQuery(void)
{

 afterTriggers.query_depth++;
}
