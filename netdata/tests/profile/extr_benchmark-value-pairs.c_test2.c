
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {char* name; char* value; } ;


 scalar_t__ cache_hash ;
 scalar_t__ dirty_hash ;
 scalar_t__ mapped_file_hash ;
 TYPE_1__* pairs ;
 scalar_t__ pgfault_hash ;
 scalar_t__ pgmajfault_hash ;
 scalar_t__ pgpgin_hash ;
 scalar_t__ pgpgout_hash ;
 scalar_t__ rss_hash ;
 scalar_t__ rss_huge_hash ;
 scalar_t__ simple_hash2 (char const*) ;
 int strcmp (char const*,char*) ;
 int strtoull (char const*,int *,int) ;
 scalar_t__ swap_hash ;
 scalar_t__ unlikely (int) ;
 int * values2 ;
 scalar_t__ writeback_hash ;

void test2() {
    int i;
    for(i = 0; pairs[i].name ; i++) {
        const char *s = pairs[i].name;
        const char *v = pairs[i].value;

    uint32_t hash = simple_hash2(s);

    if(unlikely(hash == cache_hash && !strcmp(s, "cache")))
      values2[i] = strtoull(v, ((void*)0), 10);

    else if(unlikely(hash == rss_hash && !strcmp(s, "rss")))
      values2[i] = strtoull(v, ((void*)0), 10);

    else if(unlikely(hash == rss_huge_hash && !strcmp(s, "rss_huge")))
      values2[i] = strtoull(v, ((void*)0), 10);

    else if(unlikely(hash == mapped_file_hash && !strcmp(s, "mapped_file")))
      values2[i] = strtoull(v, ((void*)0), 10);

    else if(unlikely(hash == writeback_hash && !strcmp(s, "writeback")))
      values2[i] = strtoull(v, ((void*)0), 10);

    else if(unlikely(hash == dirty_hash && !strcmp(s, "dirty")))
      values2[i] = strtoull(v, ((void*)0), 10);

    else if(unlikely(hash == swap_hash && !strcmp(s, "swap")))
      values2[i] = strtoull(v, ((void*)0), 10);

    else if(unlikely(hash == pgpgin_hash && !strcmp(s, "pgpgin")))
      values2[i] = strtoull(v, ((void*)0), 10);

    else if(unlikely(hash == pgpgout_hash && !strcmp(s, "pgpgout")))
      values2[i] = strtoull(v, ((void*)0), 10);

    else if(unlikely(hash == pgfault_hash && !strcmp(s, "pgfault")))
      values2[i] = strtoull(v, ((void*)0), 10);

    else if(unlikely(hash == pgmajfault_hash && !strcmp(s, "pgmajfault")))
      values2[i] = strtoull(v, ((void*)0), 10);
  }
}
