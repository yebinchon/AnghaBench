
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int spiffs_page_ix ;
struct TYPE_3__ {int ix; } ;
typedef TYPE_1__ spiffs_cache_page ;
typedef int spiffs ;


 int spiffs_cache_page_free (int *,int ,int ) ;
 TYPE_1__* spiffs_cache_page_get (int *,int ) ;

void spiffs_cache_drop_page(spiffs *fs, spiffs_page_ix pix) {
  spiffs_cache_page *cp = spiffs_cache_page_get(fs, pix);
  if (cp) {
    spiffs_cache_page_free(fs, cp->ix, 0);
  }
}
