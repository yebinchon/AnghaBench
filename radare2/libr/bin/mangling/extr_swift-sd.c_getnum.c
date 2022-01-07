
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char const*) ;

__attribute__((used)) static const char *getnum(const char* n, int *num) {
 if (num && *n) {
  *num = atoi (n);
 }
 while (*n && *n>='0' && *n <='9') {
  n++;
 }
 return n;
}
