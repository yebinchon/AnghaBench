
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ instrument; } ;
struct TYPE_9__ {TYPE_2__* hashtable; TYPE_1__ ps; int * parallel_state; } ;
struct TYPE_8__ {int partialTuples; } ;
typedef int Node ;
typedef TYPE_3__ HashState ;


 int InstrStartNode (scalar_t__) ;
 int InstrStopNode (scalar_t__,int ) ;
 int MultiExecParallelHash (TYPE_3__*) ;
 int MultiExecPrivateHash (TYPE_3__*) ;

Node *
MultiExecHash(HashState *node)
{

 if (node->ps.instrument)
  InstrStartNode(node->ps.instrument);

 if (node->parallel_state != ((void*)0))
  MultiExecParallelHash(node);
 else
  MultiExecPrivateHash(node);


 if (node->ps.instrument)
  InstrStopNode(node->ps.instrument, node->hashtable->partialTuples);
 return ((void*)0);
}
