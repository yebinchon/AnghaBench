
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REgg ;


 scalar_t__ attsyntax ;
 int eprintf (char*) ;
 int r_egg_printf (int *,char*,char const*) ;

__attribute__((used)) static void emit_jmp(REgg *egg, const char *str, int atr) {
 if (str) {
  if (atr) {
   if (attsyntax) {
    r_egg_printf (egg, "  jmp *%s\n", str);
   } else {
    r_egg_printf (egg, "  jmp [%s]\n", str);
   }
  } else {
   r_egg_printf (egg, "  jmp %s\n", str);
  }
 } else {
  eprintf ("Jump without destination\n");
 }
}
