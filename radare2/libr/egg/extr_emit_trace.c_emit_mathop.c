
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REgg ;


 char* R_AX ;
 int eprintf (char*,...) ;
 int r_egg_printf (int *,char*,char*,char const*,char const*) ;

__attribute__((used)) static void emit_mathop(REgg *egg, int ch, int vs, int type, const char *eq, const char *p) {
 char *op;
 switch (ch) {
 case '^': op = "eor"; break;
 case '&': op = "and"; break;
 case '|': op = "orr"; break;
 case '-': op = "sub"; break;
 case '+': op = "add"; break;
 case '*': op = "mul"; break;
 case '/': op = "div"; break;
 default: op = "mov"; break;
 }
 if (!eq) {
  eq = R_AX;
 }
 if (!p) {
  p = R_AX;
 }






 if (type == '*') {
  r_egg_printf (egg, "%s (%s, [%s])\n", op, p, eq);
 } else {
  r_egg_printf (egg, "%s (%s, %s)\n", op, p, eq);
 }
}
