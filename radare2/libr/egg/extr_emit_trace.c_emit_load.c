
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REgg ;


 int r_egg_printf (int *,char*,char const*,int) ;

__attribute__((used)) static void emit_load(REgg *egg, const char *dst, int sz) {
 r_egg_printf (egg, "load (\"%s\", %c)\n", dst, sz);
}
