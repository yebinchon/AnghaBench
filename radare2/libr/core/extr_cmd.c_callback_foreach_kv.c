
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int r_cons_printf (char*,char const*,char const*) ;

__attribute__((used)) static int callback_foreach_kv(void *user, const char *k, const char *v) {
 r_cons_printf ("%s=%s\n", k, v);
 return 1;
}
