
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REgg ;


 int r_egg_printf (int *,char*) ;

__attribute__((used)) static void emit_trap (REgg *egg) {
 r_egg_printf (egg, "  int3\n");
}
