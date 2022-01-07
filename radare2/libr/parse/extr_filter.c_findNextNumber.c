
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_DIGIT (char) ;

__attribute__((used)) static char *findNextNumber(char *op) {
 if (!op) {
  return ((void*)0);
 }
 bool ansi_found = 0;
 char *p = op;
 const char *o = ((void*)0);
 while (*p) {
  if (p[0] == 0x1b && p[1] == '[') {
   ansi_found = 1;
   p += 2;
   for (; *p && *p != 'J' && *p != 'm' && *p != 'H'; p++) {
    ;
   }
   if (*p) {
    p++;
    if (!*p) {
     break;
    }
   }
   o = p - 1;
  } else {
   bool isSpace = ansi_found;
   ansi_found = 0;
   if (!isSpace) {
    isSpace = p == op;
    if (!isSpace && o) {
     isSpace = (*o == ' ' || *o == ',' || *o == '[');
    }
   }
   if (*p == '[') {
    p++;
    if (!*p) {
     break;
    }
    if (!IS_DIGIT (*p)) {
     char *t = p;
     for (; *t && *t != ']'; t++) {
      ;
     }
     if (*t == ']') {
      continue;
     }
     p = t;
     if (!*p) {
      break;
     }
    }
   }
   if (isSpace && IS_DIGIT (*p)) {
    return p;
   }
   o = p++;
  }
 }
 return ((void*)0);
}
