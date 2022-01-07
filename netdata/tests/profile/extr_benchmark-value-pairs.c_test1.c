
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; char* value; } ;


 TYPE_1__* pairs ;
 int strcmp (char const*,char*) ;
 int strtoull (char const*,int *,int) ;
 scalar_t__ unlikely (int) ;
 int * values1 ;

void test1() {
  int i;
  for(i = 0; pairs[i].name ; i++) {
    const char *s = pairs[i].name;
    const char *v = pairs[i].value;

    if(unlikely(!strcmp(s, "cache")))
      values1[i] = strtoull(v, ((void*)0), 10);

    else if(unlikely(!strcmp(s, "rss")))
      values1[i] = strtoull(v, ((void*)0), 10);

    else if(unlikely(!strcmp(s, "rss_huge")))
      values1[i] = strtoull(v, ((void*)0), 10);

    else if(unlikely(!strcmp(s, "mapped_file")))
      values1[i] = strtoull(v, ((void*)0), 10);

    else if(unlikely(!strcmp(s, "writeback")))
      values1[i] = strtoull(v, ((void*)0), 10);

    else if(unlikely(!strcmp(s, "dirty")))
      values1[i] = strtoull(v, ((void*)0), 10);

    else if(unlikely(!strcmp(s, "swap")))
      values1[i] = strtoull(v, ((void*)0), 10);

    else if(unlikely(!strcmp(s, "pgpgin")))
      values1[i] = strtoull(v, ((void*)0), 10);

    else if(unlikely(!strcmp(s, "pgpgout")))
      values1[i] = strtoull(v, ((void*)0), 10);

    else if(unlikely(!strcmp(s, "pgfault")))
      values1[i] = strtoull(v, ((void*)0), 10);

    else if(unlikely(!strcmp(s, "pgmajfault")))
      values1[i] = strtoull(v, ((void*)0), 10);
  }
}
