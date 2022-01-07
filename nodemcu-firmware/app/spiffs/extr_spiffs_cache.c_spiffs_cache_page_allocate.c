
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int last_access; } ;
typedef TYPE_1__ spiffs_cache_page ;
struct TYPE_8__ {int cpage_use_map; int cpage_count; int last_access; } ;
typedef TYPE_2__ spiffs_cache ;
typedef int spiffs ;


 TYPE_2__* spiffs_get_cache (int *) ;
 TYPE_1__* spiffs_get_cache_page_hdr (int *,TYPE_2__*,int) ;

__attribute__((used)) static spiffs_cache_page *spiffs_cache_page_allocate(spiffs *fs) {
  spiffs_cache *cache = spiffs_get_cache(fs);
  if (cache->cpage_use_map == 0xffffffff) {

    return 0;
  }
  int i;
  for (i = 0; i < cache->cpage_count; i++) {
    if ((cache->cpage_use_map & (1<<i)) == 0) {
      spiffs_cache_page *cp = spiffs_get_cache_page_hdr(fs, cache, i);
      cache->cpage_use_map |= (1<<i);
      cp->last_access = cache->last_access;

      return cp;
    }
  }

  return 0;
}
