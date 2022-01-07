
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REgg ;


 int r_egg_printf (int *,char*,int,int,char const*) ;

__attribute__((used)) static void emit_arg (REgg *egg, int xs, int num, const char *str) {

 r_egg_printf (egg, "arg.%d.%d=%s\n", xs, num, str);
}
