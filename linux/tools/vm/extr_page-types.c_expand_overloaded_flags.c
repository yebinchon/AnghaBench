
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int ACTIVE ;
 int BIT (int ) ;
 int ERROR ;
 int FILE ;
 int MMAP_EXCLUSIVE ;
 int PM_FILE ;
 int PM_MMAP_EXCLUSIVE ;
 int PM_SOFT_DIRTY ;
 int PM_SWAP ;
 int PRIVATE ;
 int READAHEAD ;
 int RECLAIM ;
 int SLAB ;
 int SLOB_FREE ;
 int SLUB_DEBUG ;
 int SLUB_FROZEN ;
 int SOFTDIRTY ;
 int SWAP ;
 int WRITEBACK ;

__attribute__((used)) static uint64_t expand_overloaded_flags(uint64_t flags, uint64_t pme)
{

 if (flags & BIT(SLAB)) {
  if (flags & BIT(PRIVATE))
   flags ^= BIT(PRIVATE) | BIT(SLOB_FREE);
  if (flags & BIT(ACTIVE))
   flags ^= BIT(ACTIVE) | BIT(SLUB_FROZEN);
  if (flags & BIT(ERROR))
   flags ^= BIT(ERROR) | BIT(SLUB_DEBUG);
 }


 if ((flags & (BIT(RECLAIM) | BIT(WRITEBACK))) == BIT(RECLAIM))
  flags ^= BIT(RECLAIM) | BIT(READAHEAD);

 if (pme & PM_SOFT_DIRTY)
  flags |= BIT(SOFTDIRTY);
 if (pme & PM_FILE)
  flags |= BIT(FILE);
 if (pme & PM_SWAP)
  flags |= BIT(SWAP);
 if (pme & PM_MMAP_EXCLUSIVE)
  flags |= BIT(MMAP_EXCLUSIVE);

 return flags;
}
