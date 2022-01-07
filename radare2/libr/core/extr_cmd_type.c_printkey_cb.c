
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int r_cons_println (char const*) ;

__attribute__((used)) static int printkey_cb(void *user, const char *k, const char *v) {
 r_cons_println (k);
 return 1;
}
