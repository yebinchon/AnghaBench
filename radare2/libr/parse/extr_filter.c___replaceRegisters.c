
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RReg ;


 int R_REG_NAME_PC ;
 char* r_reg_get_name (int *,int) ;
 char* r_reg_get_role (int) ;
 int replaceWords (char*,char const*,char const*) ;
 char* strdup (char const*) ;

__attribute__((used)) static void __replaceRegisters(RReg *reg, char *s, bool x86) {
 int i;
 for (i = 0; i < 64; i++) {
  const char *k = r_reg_get_name (reg, i);
  if (!k || i == R_REG_NAME_PC) {
   continue;
  }
  const char *v = r_reg_get_role (i);
  if (!v) {
   break;
  }
  if (x86 && *k == 'r') {
   replaceWords (s, k, v);
   char *reg32 = strdup (k);
   *reg32 = 'e';
   replaceWords (s, reg32, v);
  } else {
   replaceWords (s, k, v);
  }
 }
}
