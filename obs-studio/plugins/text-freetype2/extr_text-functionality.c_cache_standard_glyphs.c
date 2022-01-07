
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct ft2_source {scalar_t__ texbuf_y; scalar_t__ texbuf_x; int ** cacheglyphs; } ;


 int bfree (int *) ;
 int cache_glyphs (struct ft2_source*,char*) ;
 size_t num_cache_slots ;

void cache_standard_glyphs(struct ft2_source *srcdata)
{
 for (uint32_t i = 0; i < num_cache_slots; i++) {
  if (srcdata->cacheglyphs[i] != ((void*)0)) {
   bfree(srcdata->cacheglyphs[i]);
   srcdata->cacheglyphs[i] = ((void*)0);
  }
 }

 srcdata->texbuf_x = 0;
 srcdata->texbuf_y = 0;

 cache_glyphs(srcdata, L"abcdefghijklmnopqrstuvwxyz"
         L"ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"
         L"!@#$%^&*()-_=+,<.>/?\\|[]{}`~ \'\"\0");
}
