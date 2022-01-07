
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ num_mappings; } ;
struct TYPE_7__ {scalar_t__ num_mappings; } ;
struct TYPE_6__ {scalar_t__ num_mappings; } ;
struct TYPE_5__ {scalar_t__ num_mappings; } ;


 int Assert (int) ;
 int * DatabasePath ;
 int GLOBALTABLESPACE_OID ;
 int InvalidOid ;
 int IsBootstrapProcessingMode () ;
 int MyDatabaseId ;
 int MyDatabaseTableSpace ;
 TYPE_4__ active_local_updates ;
 TYPE_3__ active_shared_updates ;
 int local_map ;
 TYPE_2__ pending_local_updates ;
 TYPE_1__ pending_shared_updates ;
 int shared_map ;
 int write_relmap_file (int,int *,int,int,int,int ,int ,int *) ;

void
RelationMapFinishBootstrap(void)
{
 Assert(IsBootstrapProcessingMode());


 Assert(active_shared_updates.num_mappings == 0);
 Assert(active_local_updates.num_mappings == 0);
 Assert(pending_shared_updates.num_mappings == 0);
 Assert(pending_local_updates.num_mappings == 0);


 write_relmap_file(1, &shared_map, 0, 0, 0,
       InvalidOid, GLOBALTABLESPACE_OID, ((void*)0));
 write_relmap_file(0, &local_map, 0, 0, 0,
       MyDatabaseId, MyDatabaseTableSpace, DatabasePath);
}
