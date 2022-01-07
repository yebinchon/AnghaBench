
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;
typedef int RRegItem ;
typedef int RReg ;


 int R_REG_TYPE_GPR ;
 int * r_reg_get (int *,char const*,int ) ;
 int r_reg_get_value (int *,int *) ;

__attribute__((used)) static ut32 i8051_reg_read (RReg *reg, const char *regname) {
 if (reg) {
  RRegItem *item = r_reg_get (reg, regname, R_REG_TYPE_GPR);
  if (item) {
   return r_reg_get_value (reg, item);
  }
 }
 return 0;
}
