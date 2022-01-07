
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int r_name_filter (char*,int ) ;
 int r_str_trim (char*) ;
 char* strdup (char const*) ;

__attribute__((used)) static char *filter_item_name(const char *name) {
 char *res = strdup (name);
 if (!res) {
  return ((void*)0);
 }

 r_str_trim (res);
 r_name_filter (res, 0);
 return res;
}
