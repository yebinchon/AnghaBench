
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memmove (char*,char*,int) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;

__attribute__((used)) static void normalize_protected_variable(char *varname)
{
 char *s = varname, *index = ((void*)0), *indexend = ((void*)0), *p;


 while (*s == ' ') {
  s++;
 }


 if (s != varname) {
  memmove(varname, s, strlen(s)+1);
 }

 for (p = varname; *p && *p != '['; p++) {
  switch(*p) {
   case ' ':
   case '.':
    *p = '_';
    break;
  }
 }


 index = strchr(varname, '[');
 if (index) {
  index++;
  s = index;
 } else {
  return;
 }


 while (index) {
  while (*index == ' ' || *index == '\r' || *index == '\n' || *index=='\t') {
   index++;
  }
  indexend = strchr(index, ']');
  indexend = indexend ? indexend + 1 : index + strlen(index);

  if (s != index) {
   memmove(s, index, strlen(index)+1);
   s += indexend-index;
  } else {
   s = indexend;
  }

  if (*s == '[') {
   s++;
   index = s;
  } else {
   index = ((void*)0);
  }
 }
 *s = '\0';
}
