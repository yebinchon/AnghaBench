
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;

__attribute__((used)) static int wordpos(const char *esil, int n) {
 const char *w = esil;
 if (n < 1) {
  n = 0;
 }
 while (w && n--) {
  const char *nw = strchr (w + 1, ',');
  if (!nw) {
   return strlen (esil);
  }
  w = nw;
 }
 if (!w && n > 0) {
  return strlen (esil);
 }
 return (size_t)(w - esil);
}
