
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int r_cons_printf (char*,char const*,char const*) ;
 int strlen (char*) ;

__attribute__((used)) static int print_link_json_cb(void *p, const char *k, const char *v) {
 r_cons_printf ("{\"0x%s\":\"%s\"}", k + strlen ("link."), v);
 return 1;
}
