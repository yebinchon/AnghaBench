
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int r_name_filter (char*,int) ;
 int r_str_replace_char (char*,char,char) ;
 char* strdup (char*) ;

void build_name_field(char *name, char **name_field) {
 if (name_field) {
  *name_field = name? strdup (name): ((void*)0);
  r_name_filter (*name_field, -1);
  r_str_replace_char (*name_field, ':', '_');
 }
}
