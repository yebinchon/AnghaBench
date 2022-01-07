
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RReg ;


 int r_reg_get_name_idx (char*) ;
 scalar_t__ r_reg_set_name (int *,int,char*) ;

__attribute__((used)) static const char *parse_alias(RReg *reg, char **tok, const int n) {
 if (n == 2) {
  int role = r_reg_get_name_idx (tok[0] + 1);
  return r_reg_set_name (reg, role, tok[1])
   ? ((void*)0)
   : "Invalid alias";
 }
 return "Invalid syntax";
}
