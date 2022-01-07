
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;
typedef int st32 ;


 scalar_t__ calloc (int,int) ;
 char* get_reg_name_1 (int) ;
 int sprintf (char*,char*,int) ;
 char* strcat_dup (char*,char*,int) ;
 int strchr (char*,char) ;
 char* strdup (char*) ;

char *get_sim_reg (char *reg_arg, ut32 ins_bits) {
 st32 code;
 char *res = ((void*)0);
 char *aux;
 code = ins_bits & 3;
 switch (code) {
 case 0:
  if(reg_arg && strchr (reg_arg, 'w')) {
   if(code == 62) {
    return strdup ("sim0");
   }
   if(code == 63) {
    return strdup ("sim0");
   }
  }
  aux = get_reg_name_1 (ins_bits >> 2);
  res = strcat_dup ("@", aux, 2);
  break;
 case 2:
  aux = (char *)calloc (1, 50);
  if (!aux) {
   return ((void*)0);
  }
  sprintf (aux, "@#0x%x", code);
  res = aux;
  break;
 case 1:
 case 3:
  res = strdup ("<reserved>");
  break;
 }
 return res;
}
