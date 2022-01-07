
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** directives ;
 char* replace_directives_for (char*,char*) ;

__attribute__((used)) static char *replace_directives(char *str) {
 int i = 0;
 char *dir = directives[i++];
 char *o = replace_directives_for (str, dir);
 while (dir) {
  o = replace_directives_for (o, dir);
  dir = directives[i++];
 }
 return o;
}
