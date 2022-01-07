
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REgg ;


 int r_egg_printf (int *,char*,int,int) ;

__attribute__((used)) static void emit_frame_end (REgg *egg, int sz, int ctx) {
 r_egg_printf (egg, "frame_end (%d, %d)\n", sz, ctx);
}
