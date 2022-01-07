
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int Relation ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;


 int Assert (scalar_t__*) ;
 int BufferGetPage (int ) ;
 int BufferIsValid (int ) ;
 int FROZEN_MASK64 ;
 int MAPSIZE ;
 scalar_t__ PageGetContents (int ) ;
 int ReleaseBuffer (int ) ;
 int StaticAssertStmt (int,char*) ;
 int VISIBLE_MASK64 ;
 scalar_t__ pg_popcount64 (int) ;
 int vm_readbuf (int ,scalar_t__,int) ;

void
visibilitymap_count(Relation rel, BlockNumber *all_visible, BlockNumber *all_frozen)
{
 BlockNumber mapBlock;
 BlockNumber nvisible = 0;
 BlockNumber nfrozen = 0;


 Assert(all_visible);

 for (mapBlock = 0;; mapBlock++)
 {
  Buffer mapBuffer;
  uint64 *map;
  int i;






  mapBuffer = vm_readbuf(rel, mapBlock, 0);
  if (!BufferIsValid(mapBuffer))
   break;






  map = (uint64 *) PageGetContents(BufferGetPage(mapBuffer));

  StaticAssertStmt(MAPSIZE % sizeof(uint64) == 0,
       "unsupported MAPSIZE");
  if (all_frozen == ((void*)0))
  {
   for (i = 0; i < MAPSIZE / sizeof(uint64); i++)
    nvisible += pg_popcount64(map[i] & VISIBLE_MASK64);
  }
  else
  {
   for (i = 0; i < MAPSIZE / sizeof(uint64); i++)
   {
    nvisible += pg_popcount64(map[i] & VISIBLE_MASK64);
    nfrozen += pg_popcount64(map[i] & FROZEN_MASK64);
   }
  }

  ReleaseBuffer(mapBuffer);
 }

 *all_visible = nvisible;
 if (all_frozen)
  *all_frozen = nfrozen;
}
