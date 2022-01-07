
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int eprintf (char*,char const*,char const*) ;

__attribute__((used)) static void set_string(const char *k, const char *f, const char *v, ...) {

 eprintf ("-> %s = %s\n", k, v);
}
