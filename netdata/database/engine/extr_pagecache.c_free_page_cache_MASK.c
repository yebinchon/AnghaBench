#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * JudyHS_array; struct rrdeng_page_descr* last_page_index; } ;
struct TYPE_3__ {int /*<<< orphan*/ * JudyL_array; } ;
struct page_cache {TYPE_2__ metrics_index; TYPE_1__ committed_page_index; } ;
struct rrdengine_instance {struct page_cache pg_cache; } ;
struct rrdeng_page_descr {int pg_cache_descr_state; int /*<<< orphan*/ * JudyL_array; struct page_cache_descr* pg_cache_descr; struct rrdeng_page_descr* prev; } ;
struct pg_cache_page_index {int pg_cache_descr_state; int /*<<< orphan*/ * JudyL_array; struct page_cache_descr* pg_cache_descr; struct pg_cache_page_index* prev; } ;
struct page_cache_descr {int flags; struct rrdeng_page_descr* page; } ;
typedef  int Word_t ;
typedef  struct rrdeng_page_descr* Pvoid_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 struct rrdeng_page_descr** FUNC1 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 struct rrdeng_page_descr** FUNC3 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int PG_CACHE_DESCR_ALLOCATED ; 
 int /*<<< orphan*/  PJE0 ; 
 scalar_t__ RRDENG_BLOCK_SIZE ; 
 int RRD_PAGE_POPULATED ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct rrdeng_page_descr*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rrdengine_instance*,struct page_cache_descr*) ; 
 scalar_t__ FUNC8 (int) ; 

void FUNC9(struct rrdengine_instance *ctx)
{
    struct page_cache *pg_cache = &ctx->pg_cache;
    Word_t ret_Judy, bytes_freed = 0;
    Pvoid_t *PValue;
    struct pg_cache_page_index *page_index, *prev_page_index;
    Word_t Index;
    struct rrdeng_page_descr *descr;
    struct page_cache_descr *pg_cache_descr;

    /* Free committed page index */
    ret_Judy = FUNC2(&pg_cache->committed_page_index.JudyL_array, PJE0);
    FUNC4(NULL == pg_cache->committed_page_index.JudyL_array);
    bytes_freed += ret_Judy;

    for (page_index = pg_cache->metrics_index.last_page_index ;
         page_index != NULL ;
         page_index = prev_page_index) {
        prev_page_index = page_index->prev;

        /* Find first page in range */
        Index = (Word_t) 0;
        PValue = FUNC1(page_index->JudyL_array, &Index, PJE0);
        descr = FUNC8(NULL == PValue) ? NULL : *PValue;

        while (descr != NULL) {
            /* Iterate all page descriptors of this metric */

            if (descr->pg_cache_descr_state & PG_CACHE_DESCR_ALLOCATED) {
                /* Check rrdenglocking.c */
                pg_cache_descr = descr->pg_cache_descr;
                if (pg_cache_descr->flags & RRD_PAGE_POPULATED) {
                    FUNC5(pg_cache_descr->page);
                    bytes_freed += RRDENG_BLOCK_SIZE;
                }
                FUNC7(ctx, pg_cache_descr);
                bytes_freed += sizeof(*pg_cache_descr);
            }
            FUNC5(descr);
            bytes_freed += sizeof(*descr);

            PValue = FUNC3(page_index->JudyL_array, &Index, PJE0);
            descr = FUNC8(NULL == PValue) ? NULL : *PValue;
        }

        /* Free page index */
        ret_Judy = FUNC2(&page_index->JudyL_array, PJE0);
        FUNC4(NULL == page_index->JudyL_array);
        bytes_freed += ret_Judy;
        FUNC5(page_index);
        bytes_freed += sizeof(*page_index);
    }
    /* Free metrics index */
    ret_Judy = FUNC0(&pg_cache->metrics_index.JudyHS_array, PJE0);
    FUNC4(NULL == pg_cache->metrics_index.JudyHS_array);
    bytes_freed += ret_Judy;

    FUNC6("Freed %lu bytes of memory from page cache.", bytes_freed);
}