
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
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
 int strcmp (char*,char*) ;
 char** strings ;
 int strtoull (int ,int *,int) ;
 scalar_t__ unlikely (int) ;
 int * values1 ;

void test1() {
  int i;
  for(i = 0; strings[i] ; i++) {
    char *s = strings[i];

    if(unlikely(!strcmp(s, "cache")))
      values1[i] = strtoull(NUMBER1, ((void*)0), 10);

    else if(unlikely(!strcmp(s, "rss")))
      values1[i] = strtoull(NUMBER2, ((void*)0), 10);

    else if(unlikely(!strcmp(s, "rss_huge")))
      values1[i] = strtoull(NUMBER3, ((void*)0), 10);

    else if(unlikely(!strcmp(s, "mapped_file")))
      values1[i] = strtoull(NUMBER4, ((void*)0), 10);

    else if(unlikely(!strcmp(s, "writeback")))
      values1[i] = strtoull(NUMBER5, ((void*)0), 10);

    else if(unlikely(!strcmp(s, "dirty")))
      values1[i] = strtoull(NUMBER6, ((void*)0), 10);

    else if(unlikely(!strcmp(s, "swap")))
      values1[i] = strtoull(NUMBER7, ((void*)0), 10);

    else if(unlikely(!strcmp(s, "pgpgin")))
      values1[i] = strtoull(NUMBER8, ((void*)0), 10);

    else if(unlikely(!strcmp(s, "pgpgout")))
      values1[i] = strtoull(NUMBER9, ((void*)0), 10);

    else if(unlikely(!strcmp(s, "pgfault")))
      values1[i] = strtoull(NUMBER10, ((void*)0), 10);

    else if(unlikely(!strcmp(s, "pgmajfault")))
      values1[i] = strtoull(NUMBER11, ((void*)0), 10);
  }
}
