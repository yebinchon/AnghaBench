#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uuid_t ;
typedef  int /*<<< orphan*/  temp_id ;
struct TYPE_11__ {int /*<<< orphan*/  lock; struct pg_cache_page_index* last_page_index; int /*<<< orphan*/  JudyHS_array; } ;
struct page_cache {TYPE_4__ metrics_index; } ;
struct rrdengine_instance {struct page_cache pg_cache; } ;
struct rrdeng_collect_handle {struct pg_cache_page_index* page_index; scalar_t__ unaligned_page; int /*<<< orphan*/ * prev_descr; int /*<<< orphan*/ * descr; struct rrdengine_instance* ctx; } ;
struct pg_cache_page_index {int /*<<< orphan*/  id; struct pg_cache_page_index* prev; } ;
struct TYPE_13__ {TYPE_5__* state; TYPE_3__* rrdset; int /*<<< orphan*/  id; } ;
struct TYPE_9__ {struct rrdeng_collect_handle rrdeng; } ;
struct TYPE_12__ {int /*<<< orphan*/ * rrdeng_uuid; TYPE_2__ handle; } ;
struct TYPE_10__ {int /*<<< orphan*/  id; TYPE_1__* rrdhost; } ;
struct TYPE_8__ {struct rrdengine_instance* rrdeng_ctx; } ;
typedef  TYPE_6__ RRDDIM ;
typedef  struct pg_cache_page_index* Pvoid_t ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EVP_MAX_MD_SIZE ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct pg_cache_page_index** FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct pg_cache_page_index** FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PJE0 ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 struct pg_cache_page_index* FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

void FUNC17(RRDDIM *rd)
{
    struct rrdeng_collect_handle *handle;
    struct page_cache *pg_cache;
    struct rrdengine_instance *ctx;
    uuid_t temp_id;
    Pvoid_t *PValue;
    struct pg_cache_page_index *page_index;
    EVP_MD_CTX *evpctx;
    unsigned char hash_value[EVP_MAX_MD_SIZE];
    unsigned int hash_len;

    //&default_global_ctx; TODO: test this use case or remove it?

    ctx = rd->rrdset->rrdhost->rrdeng_ctx;
    pg_cache = &ctx->pg_cache;
    handle = &rd->state->handle.rrdeng;
    handle->ctx = ctx;

    evpctx = FUNC3();
    FUNC1(evpctx, FUNC5(), NULL);
    FUNC2(evpctx, rd->id, FUNC12(rd->id));
    FUNC2(evpctx, rd->rrdset->id, FUNC12(rd->rrdset->id));
    FUNC0(evpctx, hash_value, &hash_len);
    FUNC4(evpctx);
    FUNC8(hash_len > sizeof(temp_id));
    FUNC11(&temp_id, hash_value, sizeof(temp_id));

    handle->descr = NULL;
    handle->prev_descr = NULL;
    handle->unaligned_page = 0;

    FUNC13(&pg_cache->metrics_index.lock);
    PValue = FUNC6(pg_cache->metrics_index.JudyHS_array, &temp_id, sizeof(uuid_t));
    if (FUNC10(NULL != PValue)) {
        page_index = *PValue;
    }
    FUNC14(&pg_cache->metrics_index.lock);
    if (NULL == PValue) {
        /* First time we see the UUID */
        FUNC15(&pg_cache->metrics_index.lock);
        PValue = FUNC7(&pg_cache->metrics_index.JudyHS_array, &temp_id, sizeof(uuid_t), PJE0);
        FUNC8(NULL == *PValue); /* TODO: figure out concurrency model */
        *PValue = page_index = FUNC9(&temp_id);
        page_index->prev = pg_cache->metrics_index.last_page_index;
        pg_cache->metrics_index.last_page_index = page_index;
        FUNC16(&pg_cache->metrics_index.lock);
    }
    rd->state->rrdeng_uuid = &page_index->id;
    handle->page_index = page_index;
}