
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ obj_id; } ;
typedef TYPE_1__ spiffs_fd ;
struct TYPE_10__ {int flags; scalar_t__ obj_id; } ;
typedef TYPE_2__ spiffs_cache_page ;
struct TYPE_11__ {int cpage_use_map; int cpage_use_mask; int cpage_count; } ;
typedef TYPE_3__ spiffs_cache ;
typedef int spiffs ;


 int SPIFFS_CACHE_FLAG_TYPE_WR ;
 TYPE_3__* spiffs_get_cache (int *) ;
 TYPE_2__* spiffs_get_cache_page_hdr (int *,TYPE_3__*,int) ;

spiffs_cache_page *spiffs_cache_page_get_by_fd(spiffs *fs, spiffs_fd *fd) {
  spiffs_cache *cache = spiffs_get_cache(fs);

  if ((cache->cpage_use_map & cache->cpage_use_mask) == 0) {

    return 0;
  }

  int i;
  for (i = 0; i < cache->cpage_count; i++) {
    spiffs_cache_page *cp = spiffs_get_cache_page_hdr(fs, cache, i);
    if ((cache->cpage_use_map & (1<<i)) &&
        (cp->flags & SPIFFS_CACHE_FLAG_TYPE_WR) &&
        cp->obj_id == fd->obj_id) {
      return cp;
    }
  }

  return 0;
}
