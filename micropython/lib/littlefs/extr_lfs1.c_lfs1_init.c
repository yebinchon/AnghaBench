
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct lfs1_config {int read_size; int prog_size; int lookahead; int block_size; void* lookahead_buffer; void* prog_buffer; void* read_buffer; } ;
struct TYPE_9__ {void* buffer; } ;
struct TYPE_12__ {void* buffer; } ;
struct TYPE_11__ {void* buffer; } ;
struct TYPE_10__ {int* root; int deorphaned; int moving; int * dirs; int * files; struct lfs1_config const* cfg; TYPE_1__ free; TYPE_8__ rcache; TYPE_6__ pcache; } ;
typedef TYPE_2__ lfs1_t ;


 int LFS1_ASSERT (int) ;
 int LFS1_ERR_NOMEM ;
 int lfs1_cache_drop (TYPE_2__*,TYPE_8__*) ;
 int lfs1_cache_zero (TYPE_2__*,TYPE_6__*) ;
 int lfs1_deinit (TYPE_2__*) ;
 void* lfs1_malloc (int) ;
 int lfs1_npw2 (int) ;

__attribute__((used)) static int lfs1_init(lfs1_t *lfs1, const struct lfs1_config *cfg) {
    lfs1->cfg = cfg;


    if (lfs1->cfg->read_buffer) {
        lfs1->rcache.buffer = lfs1->cfg->read_buffer;
    } else {
        lfs1->rcache.buffer = lfs1_malloc(lfs1->cfg->read_size);
        if (!lfs1->rcache.buffer) {
            goto cleanup;
        }
    }


    if (lfs1->cfg->prog_buffer) {
        lfs1->pcache.buffer = lfs1->cfg->prog_buffer;
    } else {
        lfs1->pcache.buffer = lfs1_malloc(lfs1->cfg->prog_size);
        if (!lfs1->pcache.buffer) {
            goto cleanup;
        }
    }


    lfs1_cache_zero(lfs1, &lfs1->pcache);
    lfs1_cache_drop(lfs1, &lfs1->rcache);


    LFS1_ASSERT(lfs1->cfg->lookahead % 32 == 0);
    LFS1_ASSERT(lfs1->cfg->lookahead > 0);
    if (lfs1->cfg->lookahead_buffer) {
        lfs1->free.buffer = lfs1->cfg->lookahead_buffer;
    } else {
        lfs1->free.buffer = lfs1_malloc(lfs1->cfg->lookahead/8);
        if (!lfs1->free.buffer) {
            goto cleanup;
        }
    }


    LFS1_ASSERT(lfs1->cfg->prog_size % lfs1->cfg->read_size == 0);
    LFS1_ASSERT(lfs1->cfg->block_size % lfs1->cfg->prog_size == 0);


    LFS1_ASSERT(4*lfs1_npw2(0xffffffff / (lfs1->cfg->block_size-2*4))
            <= lfs1->cfg->block_size);


    lfs1->root[0] = 0xffffffff;
    lfs1->root[1] = 0xffffffff;
    lfs1->files = ((void*)0);
    lfs1->dirs = ((void*)0);
    lfs1->deorphaned = 0;
    lfs1->moving = 0;

    return 0;

cleanup:
    lfs1_deinit(lfs1);
    return LFS1_ERR_NOMEM;
}
