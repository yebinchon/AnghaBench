
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rm_lastRevmapPage; int rm_pagesPerRange; } ;
typedef TYPE_1__ BrinRevmap ;
typedef scalar_t__ BlockNumber ;


 int CHECK_FOR_INTERRUPTS () ;
 scalar_t__ HEAPBLK_TO_REVMAP_BLK (int ,scalar_t__) ;
 int revmap_physical_extend (TYPE_1__*) ;

__attribute__((used)) static BlockNumber
revmap_extend_and_get_blkno(BrinRevmap *revmap, BlockNumber heapBlk)
{
 BlockNumber targetblk;


 targetblk = HEAPBLK_TO_REVMAP_BLK(revmap->rm_pagesPerRange, heapBlk) + 1;


 while (targetblk > revmap->rm_lastRevmapPage)
 {
  CHECK_FOR_INTERRUPTS();
  revmap_physical_extend(revmap);
 }

 return targetblk;
}
