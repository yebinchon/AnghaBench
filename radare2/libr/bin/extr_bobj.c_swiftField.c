
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,char) ;
 char* strdup (char*) ;
 int strlen (char const*) ;
 char* strstr (char const*,char const*) ;

__attribute__((used)) static char *swiftField(const char *dn, const char *cn) {
 if (!dn || !cn) {
  return ((void*)0);
 }

 char *p = strstr (dn, ".getter_");
 if (!p) {
  p = strstr (dn, ".setter_");
  if (!p) {
   p = strstr (dn, ".method_");
  }
 }
 if (p) {
  char *q = strstr (dn, cn);
  if (q && q[strlen (cn)] == '.') {
   q = strdup (q + strlen (cn) + 1);
   char *r = strchr (q, '.');
   if (r) {
    *r = 0;
   }
   return q;
  }
 }
 return ((void*)0);
}
