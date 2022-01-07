
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int r_name_validate_char (char const) ;

__attribute__((used)) static const char* findBreakChar(const char *s) {
 while (*s) {
  if (!r_name_validate_char (*s)) {
   break;
  }
  s++;
 }
 return s;
}
