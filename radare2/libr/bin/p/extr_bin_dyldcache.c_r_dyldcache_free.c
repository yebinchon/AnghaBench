
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* accel; struct TYPE_4__* maps; struct TYPE_4__* hdr; int * rebase_info; int * buf; int * bins; } ;
typedef TYPE_1__ RDyldCache ;


 int R_FREE (TYPE_1__*) ;
 int r_buf_free (int *) ;
 int r_list_free (int *) ;
 int rebase_info_free (int *) ;

__attribute__((used)) static void r_dyldcache_free(RDyldCache *cache) {
 if (!cache) {
  return;
 }

 r_list_free (cache->bins);
 cache->bins = ((void*)0);
 r_buf_free (cache->buf);
 cache->buf = ((void*)0);
 rebase_info_free (cache->rebase_info);
 cache->rebase_info = ((void*)0);
 R_FREE (cache->hdr);
 R_FREE (cache->maps);
 R_FREE (cache->accel);
 R_FREE (cache);
}
