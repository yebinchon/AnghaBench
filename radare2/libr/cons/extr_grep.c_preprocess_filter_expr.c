
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* find_next_intgrep (char*,char const*) ;
 char* r_str_append (char*,char const*) ;
 char* r_str_appendlen (char*,char*,int) ;
 scalar_t__ r_str_endswith (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static char *preprocess_filter_expr(char *cmd, const char *quotes) {
 char *p1, *p2, *ns = ((void*)0);
 const char *strsep = "&";
 int len;
 int i;

 p1 = find_next_intgrep (cmd, quotes);
 if (!p1) {
  return ((void*)0);
 }

 len = strlen (p1);
 if (len > 4 && r_str_endswith (p1, "~?") && p1[len - 3] != '\\') {
  p1[len - 2] = '\0';
  ns = r_str_append (ns, "?");
 }

 *p1 = '\0';

 i = 0;

 while ((p2 = find_next_intgrep (p1 + 1, quotes))) {
  ns = r_str_append (ns, strsep);
  ns = r_str_appendlen (ns, p1 + 1, (int)(p2 - p1 - 1));
  p1 = p2;
  strsep = ",";
  i++;
 }

 if (i > 0) {
  ns = r_str_append (ns, ",");
 }

 ns = r_str_append (ns, p1 + 1);

 return ns;
}
