
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int parentMap; } ;
struct TYPE_5__ {int keysize; int entrysize; int hcxt; } ;
typedef int ParentMapEntry ;
typedef TYPE_1__ HASHCTL ;
typedef TYPE_2__ GISTBuildState ;
typedef int BlockNumber ;


 int CurrentMemoryContext ;
 int HASH_BLOBS ;
 int HASH_CONTEXT ;
 int HASH_ELEM ;
 int hash_create (char*,int,TYPE_1__*,int) ;

__attribute__((used)) static void
gistInitParentMap(GISTBuildState *buildstate)
{
 HASHCTL hashCtl;

 hashCtl.keysize = sizeof(BlockNumber);
 hashCtl.entrysize = sizeof(ParentMapEntry);
 hashCtl.hcxt = CurrentMemoryContext;
 buildstate->parentMap = hash_create("gistbuild parent map",
          1024,
          &hashCtl,
          HASH_ELEM | HASH_BLOBS | HASH_CONTEXT);
}
