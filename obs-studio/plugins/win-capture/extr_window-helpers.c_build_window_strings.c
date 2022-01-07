
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* decode_str (char*) ;
 int strlist_free (char**) ;
 char** strlist_split (char const*,char,int) ;

extern void build_window_strings(const char *str, char **class, char **title,
     char **exe)
{
 char **strlist;

 *class = ((void*)0);
 *title = ((void*)0);
 *exe = ((void*)0);

 if (!str) {
  return;
 }

 strlist = strlist_split(str, ':', 1);

 if (strlist && strlist[0] && strlist[1] && strlist[2]) {
  *title = decode_str(strlist[0]);
  *class = decode_str(strlist[1]);
  *exe = decode_str(strlist[2]);
 }

 strlist_free(strlist);
}
