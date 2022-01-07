
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int r_cons_println (char const*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int cc_print(void *p, const char *k, const char *v) {
 if (!strcmp (v, "cc")) {
  r_cons_println (k);
 }
 return 1;
}
