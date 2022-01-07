
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rm_lastRevmapPage; int rm_pagesPerRange; } ;
typedef TYPE_1__ BrinRevmap ;
typedef scalar_t__ BlockNumber ;


 scalar_t__ HEAPBLK_TO_REVMAP_BLK (int ,scalar_t__) ;
 scalar_t__ InvalidBlockNumber ;

__attribute__((used)) static BlockNumber
revmap_get_blkno(BrinRevmap *revmap, BlockNumber heapBlk)
{
 BlockNumber targetblk;


 targetblk = HEAPBLK_TO_REVMAP_BLK(revmap->rm_pagesPerRange, heapBlk) + 1;


 if (targetblk <= revmap->rm_lastRevmapPage)
  return targetblk;

 return InvalidBlockNumber;
}
