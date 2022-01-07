
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


 int HASH_ENTER ;
 scalar_t__ hash_search (int ,void const*,int ,int*) ;

__attribute__((used)) static void
gistMemorizeParent(GISTBuildState *buildstate, BlockNumber child, BlockNumber parent)
{
 ParentMapEntry *entry;
 bool found;

 entry = (ParentMapEntry *) hash_search(buildstate->parentMap,
             (const void *) &child,
             HASH_ENTER,
             &found);
 entry->parentblkno = parent;
}
