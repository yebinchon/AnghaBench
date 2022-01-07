
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * hashesArr; } ;
typedef TYPE_1__ hyperLogLogState ;


 int Assert (int ) ;
 int pfree (int *) ;

void
freeHyperLogLog(hyperLogLogState *cState)
{
 Assert(cState->hashesArr != ((void*)0));
 pfree(cState->hashesArr);
}
