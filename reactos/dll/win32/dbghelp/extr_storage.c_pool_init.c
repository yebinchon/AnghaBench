
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool {size_t arena_size; int arena_full; int arena_list; } ;


 int list_init (int *) ;

void pool_init(struct pool* a, size_t arena_size)
{
    list_init( &a->arena_list );
    list_init( &a->arena_full );
    a->arena_size = arena_size;
}
