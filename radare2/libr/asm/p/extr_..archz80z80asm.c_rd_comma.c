
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* delspc (char const*) ;
 int eprintf (char*,char const*) ;

__attribute__((used)) static void rd_comma(const char **p) {
 *p = delspc (*p);
 if (**p != ',') {
  eprintf ("`,' expected. Remainder of line: %s\n", *p);
  return;
 }
 *p = delspc ((*p) + 1);
}
