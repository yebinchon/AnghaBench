
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REgg ;


 int r_egg_printf (int *,char*,...) ;

__attribute__((used)) static void emit_frame(REgg *egg, int sz) {
 r_egg_printf (egg, "  push {fp,lr}\n");
 if (sz > 0) {
  r_egg_printf (egg,

   "  add fp, sp, $4\n"
   "  sub sp, %d\n", sz);
 }
}
