
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* opad; void* ipad; } ;
struct TYPE_5__ {int init; int free; int finish; int update; int reset; int block_size; int result_size; int * md; TYPE_1__ p; } ;
typedef int PX_MD ;
typedef TYPE_2__ PX_HMAC ;


 int PXE_HASH_UNUSABLE_FOR_HMAC ;
 int hmac_block_size ;
 int hmac_finish ;
 int hmac_free ;
 int hmac_init ;
 int hmac_reset ;
 int hmac_result_size ;
 int hmac_update ;
 void* px_alloc (unsigned int) ;
 int px_find_digest (char const*,int **) ;
 unsigned int px_md_block_size (int *) ;
 int px_md_free (int *) ;

int
px_find_hmac(const char *name, PX_HMAC **res)
{
 int err;
 PX_MD *md;
 PX_HMAC *h;
 unsigned bs;

 err = px_find_digest(name, &md);
 if (err)
  return err;

 bs = px_md_block_size(md);
 if (bs < 2)
 {
  px_md_free(md);
  return PXE_HASH_UNUSABLE_FOR_HMAC;
 }

 h = px_alloc(sizeof(*h));
 h->p.ipad = px_alloc(bs);
 h->p.opad = px_alloc(bs);
 h->md = md;

 h->result_size = hmac_result_size;
 h->block_size = hmac_block_size;
 h->reset = hmac_reset;
 h->update = hmac_update;
 h->finish = hmac_finish;
 h->free = hmac_free;
 h->init = hmac_init;

 *res = h;

 return 0;
}
