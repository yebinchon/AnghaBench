
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * snapshot; int context; } ;
typedef TYPE_1__ SnapBuild ;
typedef int MemoryContext ;


 int MemoryContextDelete (int ) ;
 int SnapBuildSnapDecRefcount (int *) ;

void
FreeSnapshotBuilder(SnapBuild *builder)
{
 MemoryContext context = builder->context;


 if (builder->snapshot != ((void*)0))
 {
  SnapBuildSnapDecRefcount(builder->snapshot);
  builder->snapshot = ((void*)0);
 }


 MemoryContextDelete(context);
}
