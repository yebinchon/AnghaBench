
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int active_local_updates; int active_shared_updates; } ;
typedef scalar_t__ Size ;
typedef TYPE_1__ SerializedActiveRelMaps ;


 int Assert (int) ;
 scalar_t__ EstimateRelationMapSpace () ;
 int active_local_updates ;
 int active_shared_updates ;

void
SerializeRelationMap(Size maxSize, char *startAddress)
{
 SerializedActiveRelMaps *relmaps;

 Assert(maxSize >= EstimateRelationMapSpace());

 relmaps = (SerializedActiveRelMaps *) startAddress;
 relmaps->active_shared_updates = active_shared_updates;
 relmaps->active_local_updates = active_local_updates;
}
