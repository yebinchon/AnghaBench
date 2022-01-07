
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ num_mappings; } ;
struct TYPE_9__ {scalar_t__ num_mappings; } ;
struct TYPE_8__ {scalar_t__ num_mappings; } ;
struct TYPE_7__ {scalar_t__ num_mappings; } ;
struct TYPE_6__ {TYPE_5__ active_local_updates; TYPE_4__ active_shared_updates; } ;
typedef TYPE_1__ SerializedActiveRelMaps ;


 int ERROR ;
 TYPE_5__ active_local_updates ;
 TYPE_4__ active_shared_updates ;
 int elog (int ,char*) ;
 TYPE_3__ pending_local_updates ;
 TYPE_2__ pending_shared_updates ;

void
RestoreRelationMap(char *startAddress)
{
 SerializedActiveRelMaps *relmaps;

 if (active_shared_updates.num_mappings != 0 ||
  active_local_updates.num_mappings != 0 ||
  pending_shared_updates.num_mappings != 0 ||
  pending_local_updates.num_mappings != 0)
  elog(ERROR, "parallel worker has existing mappings");

 relmaps = (SerializedActiveRelMaps *) startAddress;
 active_shared_updates = relmaps->active_shared_updates;
 active_local_updates = relmaps->active_local_updates;
}
