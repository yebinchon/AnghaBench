
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int r_str_casecmp (char*,char const*) ;

__attribute__((used)) static int get_mem_option(char *token) {

 const char *options[] = {"sy", "st", "ld", "xxx", "ish", "ishst",
                          "ishld", "xxx", "nsh", "nshst", "nshld",
                          "xxx", "osh", "oshst", "oshld", ((void*)0)};
 int i = 0;
 while (options[i]) {
  if (!r_str_casecmp (token, options[i])) {
   return 15 - i;
  }
  i++;
 }
 return -1;
}
