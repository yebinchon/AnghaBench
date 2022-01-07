
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;
struct pg_cache_page_index {int * prev; void* latest_time; void* oldest_time; int lock; int id; scalar_t__ JudyL_array; } ;
typedef scalar_t__ Pvoid_t ;


 void* INVALID_TIME ;
 int assert (int) ;
 struct pg_cache_page_index* mallocz (int) ;
 int uuid_copy (int ,int ) ;
 scalar_t__ uv_rwlock_init (int *) ;

struct pg_cache_page_index *create_page_index(uuid_t *id)
{
    struct pg_cache_page_index *page_index;

    page_index = mallocz(sizeof(*page_index));
    page_index->JudyL_array = (Pvoid_t) ((void*)0);
    uuid_copy(page_index->id, *id);
    assert(0 == uv_rwlock_init(&page_index->lock));
    page_index->oldest_time = INVALID_TIME;
    page_index->latest_time = INVALID_TIME;
    page_index->prev = ((void*)0);

    return page_index;
}
