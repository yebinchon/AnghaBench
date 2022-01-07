
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int datapagemap_t ;
struct TYPE_4__ {scalar_t__ nextblkno; int * map; } ;
typedef TYPE_1__ datapagemap_iterator_t ;


 TYPE_1__* pg_malloc (int) ;

datapagemap_iterator_t *
datapagemap_iterate(datapagemap_t *map)
{
 datapagemap_iterator_t *iter;

 iter = pg_malloc(sizeof(datapagemap_iterator_t));
 iter->map = map;
 iter->nextblkno = 0;

 return iter;
}
