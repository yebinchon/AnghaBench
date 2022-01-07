
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nDeps; scalar_t__* dependencies; } ;
typedef TYPE_1__ DumpableObject ;
typedef scalar_t__ DumpId ;



void
removeObjectDependency(DumpableObject *dobj, DumpId refId)
{
 int i;
 int j = 0;

 for (i = 0; i < dobj->nDeps; i++)
 {
  if (dobj->dependencies[i] != refId)
   dobj->dependencies[j++] = dobj->dependencies[i];
 }
 dobj->nDeps = j;
}
