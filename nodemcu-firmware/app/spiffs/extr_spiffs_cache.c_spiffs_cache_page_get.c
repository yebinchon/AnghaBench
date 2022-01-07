
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ spiffs_page_ix ;
struct TYPE_7__ {int flags; scalar_t__ pix; int last_access; } ;
typedef TYPE_1__ spiffs_cache_page ;
struct TYPE_8__ {int cpage_use_map; int cpage_use_mask; int cpage_count; int last_access; } ;
typedef TYPE_2__ spiffs_cache ;
typedef int spiffs ;


 int SPIFFS_CACHE_FLAG_TYPE_WR ;
 TYPE_2__* spiffs_get_cache (int *) ;
 TYPE_1__* spiffs_get_cache_page_hdr (int *,TYPE_2__*,int) ;

__attribute__((used)) static spiffs_cache_page *spiffs_cache_page_get(spiffs *fs, spiffs_page_ix pix) {
  spiffs_cache *cache = spiffs_get_cache(fs);
  if ((cache->cpage_use_map & cache->cpage_use_mask) == 0) return 0;
  int i;
  for (i = 0; i < cache->cpage_count; i++) {
    spiffs_cache_page *cp = spiffs_get_cache_page_hdr(fs, cache, i);
    if ((cache->cpage_use_map & (1<<i)) &&
        (cp->flags & SPIFFS_CACHE_FLAG_TYPE_WR) == 0 &&
        cp->pix == pix ) {

      cp->last_access = cache->last_access;
      return cp;
    }
  }

  return 0;
}
