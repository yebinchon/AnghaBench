
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REgg ;


 int r_egg_printf (int *,char*,...) ;

__attribute__((used)) static void emit_jmp(REgg *egg, const char *str, int atr) {
 if (atr) {
  r_egg_printf (egg, "  ldr r0, %s", str);
  r_egg_printf (egg, "  bx r0\n");
 } else {
  r_egg_printf (egg, "  b %s\n", str);
 }
}
