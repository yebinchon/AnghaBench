
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int pdir_hash; } ;
struct TYPE_5__ {int * pd; int rel; } ;
typedef int Relation ;
typedef TYPE_1__ PartitionDirectoryEntry ;
typedef TYPE_2__* PartitionDirectory ;
typedef int * PartitionDesc ;
typedef int Oid ;


 int Assert (int ) ;
 int HASH_ENTER ;
 int * RelationGetPartitionDesc (int ) ;
 int RelationGetRelid (int ) ;
 int RelationIncrementReferenceCount (int ) ;
 TYPE_1__* hash_search (int ,int *,int ,int*) ;

PartitionDesc
PartitionDirectoryLookup(PartitionDirectory pdir, Relation rel)
{
 PartitionDirectoryEntry *pde;
 Oid relid = RelationGetRelid(rel);
 bool found;

 pde = hash_search(pdir->pdir_hash, &relid, HASH_ENTER, &found);
 if (!found)
 {




  RelationIncrementReferenceCount(rel);
  pde->rel = rel;
  pde->pd = RelationGetPartitionDesc(rel);
  Assert(pde->pd != ((void*)0));
 }
 return pde->pd;
}
