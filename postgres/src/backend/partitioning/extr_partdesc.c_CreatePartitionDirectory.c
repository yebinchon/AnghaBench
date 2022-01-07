
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int keysize; int entrysize; void* hcxt; } ;
struct TYPE_7__ {int pdir_hash; void* pdir_mcxt; } ;
typedef int PartitionDirectoryEntry ;
typedef int PartitionDirectoryData ;
typedef TYPE_1__* PartitionDirectory ;
typedef int Oid ;
typedef void* MemoryContext ;
typedef TYPE_2__ HASHCTL ;


 int HASH_BLOBS ;
 int HASH_CONTEXT ;
 int HASH_ELEM ;
 int MemSet (TYPE_2__*,int ,int) ;
 void* MemoryContextSwitchTo (void*) ;
 int hash_create (char*,int,TYPE_2__*,int) ;
 TYPE_1__* palloc (int) ;

PartitionDirectory
CreatePartitionDirectory(MemoryContext mcxt)
{
 MemoryContext oldcontext = MemoryContextSwitchTo(mcxt);
 PartitionDirectory pdir;
 HASHCTL ctl;

 MemSet(&ctl, 0, sizeof(HASHCTL));
 ctl.keysize = sizeof(Oid);
 ctl.entrysize = sizeof(PartitionDirectoryEntry);
 ctl.hcxt = mcxt;

 pdir = palloc(sizeof(PartitionDirectoryData));
 pdir->pdir_mcxt = mcxt;
 pdir->pdir_hash = hash_create("partition directory", 256, &ctl,
          HASH_ELEM | HASH_BLOBS | HASH_CONTEXT);

 MemoryContextSwitchTo(oldcontext);
 return pdir;
}
