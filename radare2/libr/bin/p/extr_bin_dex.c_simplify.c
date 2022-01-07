
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int r_str_cpy (char*,char*) ;
 scalar_t__ r_str_rchr (char*,int *,char) ;
 int r_str_replace_char (char*,char,char) ;

__attribute__((used)) static char *simplify(char *s) {
 char *p = (char *)r_str_rchr (s, ((void*)0), '/');
 if (p) {
  r_str_cpy (s, p + 1);
 }
 r_str_replace_char (s, '/', '.');
 return s;
}
