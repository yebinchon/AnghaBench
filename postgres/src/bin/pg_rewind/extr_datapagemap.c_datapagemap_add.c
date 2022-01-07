
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bitmapsize; int* bitmap; } ;
typedef TYPE_1__ datapagemap_t ;
typedef int BlockNumber ;


 int memset (int*,int ,int) ;
 int* pg_realloc (int*,int) ;

void
datapagemap_add(datapagemap_t *map, BlockNumber blkno)
{
 int offset;
 int bitno;

 offset = blkno / 8;
 bitno = blkno % 8;


 if (map->bitmapsize <= offset)
 {
  int oldsize = map->bitmapsize;
  int newsize;







  newsize = offset + 1;
  newsize += 10;

  map->bitmap = pg_realloc(map->bitmap, newsize);


  memset(&map->bitmap[oldsize], 0, newsize - oldsize);

  map->bitmapsize = newsize;
 }


 map->bitmap[offset] |= (1 << bitno);
}
