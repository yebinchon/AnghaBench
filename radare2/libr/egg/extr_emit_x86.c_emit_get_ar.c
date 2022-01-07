
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REgg ;


 scalar_t__ R_REG_AR_OFF ;
 char* emit_regs (int *,scalar_t__) ;
 int strcpy (char*,char const*) ;

__attribute__((used)) static void emit_get_ar (REgg *egg, char *out, int idx) {
 const char *reg = emit_regs (egg, R_REG_AR_OFF + idx);

 if (reg) {
  strcpy (out, reg);
 }
}
