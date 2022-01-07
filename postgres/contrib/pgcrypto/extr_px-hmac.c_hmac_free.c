
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* opad; TYPE_2__* ipad; } ;
struct TYPE_7__ {TYPE_1__ p; int md; } ;
typedef TYPE_2__ PX_HMAC ;


 int px_free (TYPE_2__*) ;
 unsigned int px_md_block_size (int ) ;
 int px_md_free (int ) ;
 int px_memset (TYPE_2__*,int ,unsigned int) ;

__attribute__((used)) static void
hmac_free(PX_HMAC *h)
{
 unsigned bs;

 bs = px_md_block_size(h->md);
 px_md_free(h->md);

 px_memset(h->p.ipad, 0, bs);
 px_memset(h->p.opad, 0, bs);
 px_free(h->p.ipad);
 px_free(h->p.opad);
 px_free(h);
}
