
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ hashtable; scalar_t__ hinstrument; } ;
typedef TYPE_1__ HashState ;


 int ExecHashGetInstrumentation (scalar_t__,scalar_t__) ;

void
ExecShutdownHash(HashState *node)
{
 if (node->hinstrument && node->hashtable)
  ExecHashGetInstrumentation(node->hinstrument, node->hashtable);
}
