
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int NUMBER1 ;
 int NUMBER10 ;
 int NUMBER11 ;
 int NUMBER2 ;
 int NUMBER3 ;
 int NUMBER4 ;
 int NUMBER5 ;
 int NUMBER6 ;
 int NUMBER7 ;
 int NUMBER8 ;
 int NUMBER9 ;
 scalar_t__ cache_hash ;
 scalar_t__ dirty_hash ;
 scalar_t__ mapped_file_hash ;
 scalar_t__ pgfault_hash ;
 scalar_t__ pgmajfault_hash ;
 scalar_t__ pgpgin_hash ;
 scalar_t__ pgpgout_hash ;
 scalar_t__ rss_hash ;
 scalar_t__ rss_huge_hash ;
 scalar_t__ simple_hash (char*) ;
 int strcmp (char*,char*) ;
 char** strings ;
 int strtoull (int ,int *,int) ;
 scalar_t__ swap_hash ;
 scalar_t__ unlikely (int) ;
 int * values3 ;
 scalar_t__ writeback_hash ;

void test3() {
  int i;
  for(i = 0; strings[i] ; i++) {
    char *s = strings[i];
    uint32_t hash = simple_hash(s);

    if(unlikely(hash == cache_hash && !strcmp(s, "cache")))
      values3[i] = strtoull(NUMBER1, ((void*)0), 10);

    else if(unlikely(hash == rss_hash && !strcmp(s, "rss")))
      values3[i] = strtoull(NUMBER2, ((void*)0), 10);

    else if(unlikely(hash == rss_huge_hash && !strcmp(s, "rss_huge")))
      values3[i] = strtoull(NUMBER3, ((void*)0), 10);

    else if(unlikely(hash == mapped_file_hash && !strcmp(s, "mapped_file")))
      values3[i] = strtoull(NUMBER4, ((void*)0), 10);

    else if(unlikely(hash == writeback_hash && !strcmp(s, "writeback")))
      values3[i] = strtoull(NUMBER5, ((void*)0), 10);

    else if(unlikely(hash == dirty_hash && !strcmp(s, "dirty")))
      values3[i] = strtoull(NUMBER6, ((void*)0), 10);

    else if(unlikely(hash == swap_hash && !strcmp(s, "swap")))
      values3[i] = strtoull(NUMBER7, ((void*)0), 10);

    else if(unlikely(hash == pgpgin_hash && !strcmp(s, "pgpgin")))
      values3[i] = strtoull(NUMBER8, ((void*)0), 10);

    else if(unlikely(hash == pgpgout_hash && !strcmp(s, "pgpgout")))
      values3[i] = strtoull(NUMBER9, ((void*)0), 10);

    else if(unlikely(hash == pgfault_hash && !strcmp(s, "pgfault")))
      values3[i] = strtoull(NUMBER10, ((void*)0), 10);

    else if(unlikely(hash == pgmajfault_hash && !strcmp(s, "pgmajfault")))
      values3[i] = strtoull(NUMBER11, ((void*)0), 10);
  }
}
