
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int parentMap; } ;
struct TYPE_4__ {int parentblkno; } ;
typedef TYPE_1__ ParentMapEntry ;
typedef TYPE_2__ GISTBuildState ;
typedef int BlockNumber ;


 int ERROR ;
 int HASH_FIND ;
 int elog (int ,char*,int ) ;
 scalar_t__ hash_search (int ,void const*,int ,int*) ;

__attribute__((used)) static BlockNumber
gistGetParent(GISTBuildState *buildstate, BlockNumber child)
{
 ParentMapEntry *entry;
 bool found;


 entry = (ParentMapEntry *) hash_search(buildstate->parentMap,
             (const void *) &child,
             HASH_FIND,
             &found);
 if (!found)
  elog(ERROR, "could not find parent of block %d in lookup table", child);

 return entry->parentblkno;
}
