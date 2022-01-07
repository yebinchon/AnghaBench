
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REgg ;


 int lastarg ;
 scalar_t__** lastargs ;
 int r_egg_printf (int *,char*,...) ;

__attribute__((used)) static void emit_call(REgg *egg, const char *str, int atr) {
 int i;

 for (i = 0; i < lastarg; i++) {
  r_egg_printf (egg, "  ldr r%d, [%s]\n", lastarg - 1 - i, lastargs[i]);
  lastargs[i][0] = 0;
 }

 if (atr) {
  r_egg_printf (egg, "  ldr r0, %s", str);
  r_egg_printf (egg, "  blx r0\n");
 } else {
  r_egg_printf (egg, "  bl %s\n", str);
 }
}
