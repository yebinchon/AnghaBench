
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;
typedef int RRegItem ;
typedef int RReg ;


 int R_REG_TYPE_GPR ;
 int * r_reg_get (int *,char const*,int ) ;
 int r_reg_set_value (int *,int *,int ) ;

__attribute__((used)) static bool pic_midrange_reg_write (RReg *reg, const char *regname, ut32 num) {
 if (reg) {
  RRegItem *item = r_reg_get (reg, regname, R_REG_TYPE_GPR);
  if (item) {
   r_reg_set_value (reg, item, num);
   return 1;
  }
 }
 return 0;
}
