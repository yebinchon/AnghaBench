
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ipad; } ;
struct TYPE_5__ {TYPE_1__ p; int * md; } ;
typedef int PX_MD ;
typedef TYPE_2__ PX_HMAC ;


 unsigned int px_md_block_size (int *) ;
 int px_md_reset (int *) ;
 int px_md_update (int *,int ,unsigned int) ;

__attribute__((used)) static void
hmac_reset(PX_HMAC *h)
{
 PX_MD *md = h->md;
 unsigned bs = px_md_block_size(md);

 px_md_reset(md);
 px_md_update(md, h->p.ipad, bs);
}
