
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REgg ;


 int r_egg_printf (int *,char*,...) ;

__attribute__((used)) static void emit_frame_end(REgg *egg, int sz, int ctx) {
 if (sz > 0) {
  r_egg_printf (egg, "  add sp, fp, %d\n", sz);
 }
 if (ctx > 0) {
  r_egg_printf (egg, "  pop {fp,pc}\n");
 }
}
