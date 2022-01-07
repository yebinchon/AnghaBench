
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REgg ;


 int r_egg_printf (int *,char*,char const*,char const*) ;

__attribute__((used)) static void emit_equ(REgg *egg, const char *key, const char *value) {
 r_egg_printf (egg, ".equ %s, %s\n", key, value);
}
