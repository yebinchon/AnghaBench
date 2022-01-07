
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint64_t ;


 size_t ARRAY_SIZE (char**) ;
 int fatal (char*,size_t) ;
 char** page_flag_names ;

__attribute__((used)) static char *page_flag_name(uint64_t flags)
{
 static char buf[65];
 int present;
 size_t i, j;

 for (i = 0, j = 0; i < ARRAY_SIZE(page_flag_names); i++) {
  present = (flags >> i) & 1;
  if (!page_flag_names[i]) {
   if (present)
    fatal("unknown flag bit %d\n", i);
   continue;
  }
  buf[j++] = present ? page_flag_names[i][0] : '_';
 }

 return buf;
}
