
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool get_arg(char const*multi, int n, char * dest)
{
 char* lastnonws = dest;
 bool anynonws = 0;
 bool in_string = 0;
 n -= 1;
 if (!multi) return 0;
 while (n && *multi && *multi != '\n' && *multi != '\r') {
  if (*multi == '\'') in_string = !in_string;
  if (!in_string) {
   if (*multi == ';') {
    return 0;
   }
   if (*multi == ',') {
    multi += 1;
    n -= 1;
    continue;
   }
  }
  multi += 1;
 }
 if (!*multi || *multi == '\n' || *multi == '\r' || in_string) {
  return 0;
 }

 while (*multi && (*multi == ' ' || *multi == '\t')) {
  multi += 1;
 }

 while (*multi && *multi != '\n' && *multi != '\r') {
  if (*multi == '\'') in_string = !in_string;
  if (!in_string) {
   if (*multi == ';' || *multi == ',') {
    break;
   }
   if (*multi != ' ' && *multi != '\t') {
    lastnonws = dest;
    anynonws = 1;
   }
   *dest = *multi;
   dest += 1;
   multi += 1;
  }
 }

 if (in_string) return 0;

 if (!anynonws) {
  *dest = '\0';
  return 0;
 }
 *(lastnonws + 1) = '\0';
 return 1;
}
