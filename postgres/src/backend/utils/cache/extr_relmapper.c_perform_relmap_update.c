
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RelMapFile ;


 int DatabasePath ;
 int GLOBALTABLESPACE_OID ;
 int InvalidOid ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int MyDatabaseId ;
 int MyDatabaseTableSpace ;
 int RelationMappingLock ;
 int allowSystemTableMods ;
 int load_relmap_file (int) ;
 int local_map ;
 int memcpy (int *,int *,int) ;
 int merge_map_updates (int *,int const*,int ) ;
 int shared_map ;
 int write_relmap_file (int,int *,int,int,int,int ,int ,int ) ;

__attribute__((used)) static void
perform_relmap_update(bool shared, const RelMapFile *updates)
{
 RelMapFile newmap;
 LWLockAcquire(RelationMappingLock, LW_EXCLUSIVE);


 load_relmap_file(shared);


 if (shared)
  memcpy(&newmap, &shared_map, sizeof(RelMapFile));
 else
  memcpy(&newmap, &local_map, sizeof(RelMapFile));





 merge_map_updates(&newmap, updates, allowSystemTableMods);


 write_relmap_file(shared, &newmap, 1, 1, 1,
       (shared ? InvalidOid : MyDatabaseId),
       (shared ? GLOBALTABLESPACE_OID : MyDatabaseTableSpace),
       DatabasePath);


 LWLockRelease(RelationMappingLock);
}
