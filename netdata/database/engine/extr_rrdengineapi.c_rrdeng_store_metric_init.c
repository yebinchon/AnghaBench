
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uuid_t ;
typedef int temp_id ;
struct TYPE_11__ {int lock; struct pg_cache_page_index* last_page_index; int JudyHS_array; } ;
struct page_cache {TYPE_4__ metrics_index; } ;
struct rrdengine_instance {struct page_cache pg_cache; } ;
struct rrdeng_collect_handle {struct pg_cache_page_index* page_index; scalar_t__ unaligned_page; int * prev_descr; int * descr; struct rrdengine_instance* ctx; } ;
struct pg_cache_page_index {int id; struct pg_cache_page_index* prev; } ;
struct TYPE_13__ {TYPE_5__* state; TYPE_3__* rrdset; int id; } ;
struct TYPE_9__ {struct rrdeng_collect_handle rrdeng; } ;
struct TYPE_12__ {int * rrdeng_uuid; TYPE_2__ handle; } ;
struct TYPE_10__ {int id; TYPE_1__* rrdhost; } ;
struct TYPE_8__ {struct rrdengine_instance* rrdeng_ctx; } ;
typedef TYPE_6__ RRDDIM ;
typedef struct pg_cache_page_index* Pvoid_t ;
typedef int EVP_MD_CTX ;


 int EVP_DigestFinal_ex (int *,unsigned char*,unsigned int*) ;
 int EVP_DigestInit_ex (int *,int ,int *) ;
 int EVP_DigestUpdate (int *,int ,int ) ;
 int EVP_MAX_MD_SIZE ;
 int * EVP_MD_CTX_create () ;
 int EVP_MD_CTX_destroy (int *) ;
 int EVP_sha256 () ;
 struct pg_cache_page_index** JudyHSGet (int ,int *,int) ;
 struct pg_cache_page_index** JudyHSIns (int *,int *,int,int ) ;
 int PJE0 ;
 int assert (int) ;
 struct pg_cache_page_index* create_page_index (int *) ;
 scalar_t__ likely (int) ;
 int memcpy (int *,unsigned char*,int) ;
 int strlen (int ) ;
 int uv_rwlock_rdlock (int *) ;
 int uv_rwlock_rdunlock (int *) ;
 int uv_rwlock_wrlock (int *) ;
 int uv_rwlock_wrunlock (int *) ;

void rrdeng_store_metric_init(RRDDIM *rd)
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



    ctx = rd->rrdset->rrdhost->rrdeng_ctx;
    pg_cache = &ctx->pg_cache;
    handle = &rd->state->handle.rrdeng;
    handle->ctx = ctx;

    evpctx = EVP_MD_CTX_create();
    EVP_DigestInit_ex(evpctx, EVP_sha256(), ((void*)0));
    EVP_DigestUpdate(evpctx, rd->id, strlen(rd->id));
    EVP_DigestUpdate(evpctx, rd->rrdset->id, strlen(rd->rrdset->id));
    EVP_DigestFinal_ex(evpctx, hash_value, &hash_len);
    EVP_MD_CTX_destroy(evpctx);
    assert(hash_len > sizeof(temp_id));
    memcpy(&temp_id, hash_value, sizeof(temp_id));

    handle->descr = ((void*)0);
    handle->prev_descr = ((void*)0);
    handle->unaligned_page = 0;

    uv_rwlock_rdlock(&pg_cache->metrics_index.lock);
    PValue = JudyHSGet(pg_cache->metrics_index.JudyHS_array, &temp_id, sizeof(uuid_t));
    if (likely(((void*)0) != PValue)) {
        page_index = *PValue;
    }
    uv_rwlock_rdunlock(&pg_cache->metrics_index.lock);
    if (((void*)0) == PValue) {

        uv_rwlock_wrlock(&pg_cache->metrics_index.lock);
        PValue = JudyHSIns(&pg_cache->metrics_index.JudyHS_array, &temp_id, sizeof(uuid_t), PJE0);
        assert(((void*)0) == *PValue);
        *PValue = page_index = create_page_index(&temp_id);
        page_index->prev = pg_cache->metrics_index.last_page_index;
        pg_cache->metrics_index.last_page_index = page_index;
        uv_rwlock_wrunlock(&pg_cache->metrics_index.lock);
    }
    rd->state->rrdeng_uuid = &page_index->id;
    handle->page_index = page_index;
}
