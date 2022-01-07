
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REgg ;


 int free (char*) ;
 char* r_egg_mkvar (int *,char*,char*,int ) ;
 int r_egg_printf (int *,char*,char*,char*,char const*) ;

__attribute__((used)) static void emit_branch(REgg *egg, char *b, char *g, char *e, char *n, int sz, const char *dst) {

 char *p, str[64];
 char *arg = ((void*)0);
 char *op = "beq";

 if (b) {
  *b = '\0';
  op = e?"bge":"bgt";
  arg = b+1;
 } else
 if (g) {
  *g = '\0';
  op = e?"ble":"blt";
  arg = g+1;
 }
 if (!arg) {
  if (e) {
   arg = e+1;
   op = "bne";
  } else {
   arg = "0";
   op = n?"bne":"beq";
  }
 }

 if (*arg == '=') {
  arg++;
 }
 p = r_egg_mkvar (egg, str, arg, 0);
 r_egg_printf (egg, "%s (%s) => (%s)\n", op, p, dst);
 free (p);
}
