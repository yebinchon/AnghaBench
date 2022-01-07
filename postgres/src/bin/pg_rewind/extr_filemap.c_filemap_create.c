
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ narray; int * array; scalar_t__ nlist; int * last; int first; } ;
typedef TYPE_1__ filemap_t ;


 int Assert (int ) ;
 TYPE_1__* filemap ;
 TYPE_1__* pg_malloc (int) ;

void
filemap_create(void)
{
 filemap_t *map;

 map = pg_malloc(sizeof(filemap_t));
 map->first = map->last = ((void*)0);
 map->nlist = 0;
 map->array = ((void*)0);
 map->narray = 0;

 Assert(filemap == ((void*)0));
 filemap = map;
}
