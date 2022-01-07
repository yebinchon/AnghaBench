
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REgg ;


 int r_egg_printf (int *,char*,char const*,char const*,int) ;

__attribute__((used)) static void emit_set_string(REgg *egg, const char *dstvar, const char *str, int j) {

 r_egg_printf (egg, "set (\"%s\", \"%s\", %d)\n", dstvar, str, j);
}
