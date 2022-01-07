
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int pdir_hash; } ;
struct TYPE_5__ {int rel; } ;
typedef TYPE_1__ PartitionDirectoryEntry ;
typedef TYPE_2__* PartitionDirectory ;
typedef int HASH_SEQ_STATUS ;


 int RelationDecrementReferenceCount (int ) ;
 int hash_seq_init (int *,int ) ;
 TYPE_1__* hash_seq_search (int *) ;

void
DestroyPartitionDirectory(PartitionDirectory pdir)
{
 HASH_SEQ_STATUS status;
 PartitionDirectoryEntry *pde;

 hash_seq_init(&status, pdir->pdir_hash);
 while ((pde = hash_seq_search(&status)) != ((void*)0))
  RelationDecrementReferenceCount(pde->rel);
}
