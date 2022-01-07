
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bitmapsize; int* bitmap; } ;
typedef TYPE_1__ datapagemap_t ;
struct TYPE_5__ {int nextblkno; TYPE_1__* map; } ;
typedef TYPE_2__ datapagemap_iterator_t ;
typedef int BlockNumber ;



bool
datapagemap_next(datapagemap_iterator_t *iter, BlockNumber *blkno)
{
 datapagemap_t *map = iter->map;

 for (;;)
 {
  BlockNumber blk = iter->nextblkno;
  int nextoff = blk / 8;
  int bitno = blk % 8;

  if (nextoff >= map->bitmapsize)
   break;

  iter->nextblkno++;

  if (map->bitmap[nextoff] & (1 << bitno))
  {
   *blkno = blk;
   return 1;
  }
 }


 return 0;
}
