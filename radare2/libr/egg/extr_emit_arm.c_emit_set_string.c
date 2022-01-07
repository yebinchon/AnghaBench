
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REgg ;


 int free (char*) ;
 char* r_egg_mkvar (int *,char*,char const*,int ) ;
 int r_egg_printf (int *,char*,...) ;
 char* r_str_escape (char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static void emit_set_string(REgg *egg, const char *dstvar, const char *str, int j) {
 int rest, off = 0;
 off = strlen (str) + 1;
 rest = (off % 4);
 if (rest) {
  rest = 4 - rest;
 }
 off += rest - 4;
 r_egg_printf (egg, "  add pc, %d\n", (off));



 r_egg_printf (egg, ".string \"%s\"\n", str = r_str_escape (str));
 free ((char *) str);
 if (rest) {
  r_egg_printf (egg, ".fill %d, 1, 0\n", (rest));
 }
 r_egg_printf (egg, "  sub r0, pc, %d\n", off + 12);
 {
  char str[32], *p = r_egg_mkvar (egg, str, dstvar, 0);

  r_egg_printf (egg, "  str r0, [%s]\n", p);
  free (p);
 }
}
