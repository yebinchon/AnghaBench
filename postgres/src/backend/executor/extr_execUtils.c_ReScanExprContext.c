
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ecxt_per_tuple_memory; } ;
typedef TYPE_1__ ExprContext ;


 int MemoryContextReset (int ) ;
 int ShutdownExprContext (TYPE_1__*,int) ;

void
ReScanExprContext(ExprContext *econtext)
{

 ShutdownExprContext(econtext, 1);

 MemoryContextReset(econtext->ecxt_per_tuple_memory);
}
