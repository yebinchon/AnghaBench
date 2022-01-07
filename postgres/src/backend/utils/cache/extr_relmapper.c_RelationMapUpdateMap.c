
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RelMapFile ;
typedef int Oid ;


 int ERROR ;
 int GetCurrentTransactionNestLevel () ;
 scalar_t__ IsBootstrapProcessingMode () ;
 scalar_t__ IsInParallelMode () ;
 int active_local_updates ;
 int active_shared_updates ;
 int apply_map_update (int *,int ,int ,int) ;
 int elog (int ,char*) ;
 int local_map ;
 int pending_local_updates ;
 int pending_shared_updates ;
 int shared_map ;

void
RelationMapUpdateMap(Oid relationId, Oid fileNode, bool shared,
      bool immediate)
{
 RelMapFile *map;

 if (IsBootstrapProcessingMode())
 {



  if (shared)
   map = &shared_map;
  else
   map = &local_map;
 }
 else
 {





  if (GetCurrentTransactionNestLevel() > 1)
   elog(ERROR, "cannot change relation mapping within subtransaction");

  if (IsInParallelMode())
   elog(ERROR, "cannot change relation mapping in parallel mode");

  if (immediate)
  {

   if (shared)
    map = &active_shared_updates;
   else
    map = &active_local_updates;
  }
  else
  {

   if (shared)
    map = &pending_shared_updates;
   else
    map = &pending_local_updates;
  }
 }
 apply_map_update(map, relationId, fileNode, 1);
}
