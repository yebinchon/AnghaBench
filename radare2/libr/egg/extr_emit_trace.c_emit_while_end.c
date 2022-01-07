
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REgg ;


 int r_egg_printf (int *,char*,char const*) ;

__attribute__((used)) static void emit_while_end (REgg *egg, const char *labelback) {
 r_egg_printf (egg, "while_end (%s)\n", labelback);
}
