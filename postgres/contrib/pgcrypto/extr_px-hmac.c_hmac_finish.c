
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_4__ {int * opad; } ;
struct TYPE_5__ {TYPE_1__ p; int * md; } ;
typedef int PX_MD ;
typedef TYPE_2__ PX_HMAC ;


 int * px_alloc (unsigned int) ;
 int px_free (int *) ;
 unsigned int px_md_block_size (int *) ;
 int px_md_finish (int *,int *) ;
 int px_md_reset (int *) ;
 unsigned int px_md_result_size (int *) ;
 int px_md_update (int *,int *,unsigned int) ;
 int px_memset (int *,int ,unsigned int) ;

__attribute__((used)) static void
hmac_finish(PX_HMAC *h, uint8 *dst)
{
 PX_MD *md = h->md;
 unsigned bs,
    hlen;
 uint8 *buf;

 bs = px_md_block_size(md);
 hlen = px_md_result_size(md);

 buf = px_alloc(hlen);

 px_md_finish(md, buf);

 px_md_reset(md);
 px_md_update(md, h->p.opad, bs);
 px_md_update(md, buf, hlen);
 px_md_finish(md, dst);

 px_memset(buf, 0, hlen);
 px_free(buf);
}
