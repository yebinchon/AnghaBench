
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REgg ;


 int r_egg_printf (int *,char*,char const*) ;

__attribute__((used)) static void emit_get_result(REgg *egg, const char *ocn) {
 r_egg_printf (egg, "  mov %s, r0\n", ocn);
}
