
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * JudyHS_array; struct rrdeng_page_descr* last_page_index; } ;
struct TYPE_3__ {int * JudyL_array; } ;
struct page_cache {TYPE_2__ metrics_index; TYPE_1__ committed_page_index; } ;
struct rrdengine_instance {struct page_cache pg_cache; } ;
struct rrdeng_page_descr {int pg_cache_descr_state; int * JudyL_array; struct page_cache_descr* pg_cache_descr; struct rrdeng_page_descr* prev; } ;
struct pg_cache_page_index {int pg_cache_descr_state; int * JudyL_array; struct page_cache_descr* pg_cache_descr; struct pg_cache_page_index* prev; } ;
struct page_cache_descr {int flags; struct rrdeng_page_descr* page; } ;
typedef int Word_t ;
typedef struct rrdeng_page_descr* Pvoid_t ;


 int JudyHSFreeArray (int **,int ) ;
 struct rrdeng_page_descr** JudyLFirst (int *,int*,int ) ;
 int JudyLFreeArray (int **,int ) ;
 struct rrdeng_page_descr** JudyLNext (int *,int*,int ) ;
 int PG_CACHE_DESCR_ALLOCATED ;
 int PJE0 ;
 scalar_t__ RRDENG_BLOCK_SIZE ;
 int RRD_PAGE_POPULATED ;
 int assert (int) ;
 int freez (struct rrdeng_page_descr*) ;
 int info (char*,int) ;
 int rrdeng_destroy_pg_cache_descr (struct rrdengine_instance*,struct page_cache_descr*) ;
 scalar_t__ unlikely (int) ;

void free_page_cache(struct rrdengine_instance *ctx)
{
    struct page_cache *pg_cache = &ctx->pg_cache;
    Word_t ret_Judy, bytes_freed = 0;
    Pvoid_t *PValue;
    struct pg_cache_page_index *page_index, *prev_page_index;
    Word_t Index;
    struct rrdeng_page_descr *descr;
    struct page_cache_descr *pg_cache_descr;


    ret_Judy = JudyLFreeArray(&pg_cache->committed_page_index.JudyL_array, PJE0);
    assert(((void*)0) == pg_cache->committed_page_index.JudyL_array);
    bytes_freed += ret_Judy;

    for (page_index = pg_cache->metrics_index.last_page_index ;
         page_index != ((void*)0) ;
         page_index = prev_page_index) {
        prev_page_index = page_index->prev;


        Index = (Word_t) 0;
        PValue = JudyLFirst(page_index->JudyL_array, &Index, PJE0);
        descr = unlikely(((void*)0) == PValue) ? ((void*)0) : *PValue;

        while (descr != ((void*)0)) {


            if (descr->pg_cache_descr_state & PG_CACHE_DESCR_ALLOCATED) {

                pg_cache_descr = descr->pg_cache_descr;
                if (pg_cache_descr->flags & RRD_PAGE_POPULATED) {
                    freez(pg_cache_descr->page);
                    bytes_freed += RRDENG_BLOCK_SIZE;
                }
                rrdeng_destroy_pg_cache_descr(ctx, pg_cache_descr);
                bytes_freed += sizeof(*pg_cache_descr);
            }
            freez(descr);
            bytes_freed += sizeof(*descr);

            PValue = JudyLNext(page_index->JudyL_array, &Index, PJE0);
            descr = unlikely(((void*)0) == PValue) ? ((void*)0) : *PValue;
        }


        ret_Judy = JudyLFreeArray(&page_index->JudyL_array, PJE0);
        assert(((void*)0) == page_index->JudyL_array);
        bytes_freed += ret_Judy;
        freez(page_index);
        bytes_freed += sizeof(*page_index);
    }

    ret_Judy = JudyHSFreeArray(&pg_cache->metrics_index.JudyHS_array, PJE0);
    assert(((void*)0) == pg_cache->metrics_index.JudyHS_array);
    bytes_freed += ret_Judy;

    info("Freed %lu bytes of memory from page cache.", bytes_freed);
}
