
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int strategy; int ndatums; } ;
typedef TYPE_1__* PartitionBoundInfo ;


 int Assert (int ) ;


 int partition_bound_accepts_nulls (TYPE_1__*) ;
 int partition_bound_has_default (TYPE_1__*) ;

bool
partitions_are_ordered(PartitionBoundInfo boundinfo, int nparts)
{
 Assert(boundinfo != ((void*)0));

 switch (boundinfo->strategy)
 {
  case 128:
   if (!partition_bound_has_default(boundinfo))
    return 1;
   break;

  case 129:
   if (partition_bound_has_default(boundinfo))
    return 0;

   if (boundinfo->ndatums + partition_bound_accepts_nulls(boundinfo)
    == nparts)
    return 1;
   break;

  default:

   break;
 }

 return 0;
}
