
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut16 ;


 scalar_t__ r_str_casecmp (char const* const,char*) ;
 int single_byte_instr (int,int **) ;
 int str_iwhitecasecmp (char const* const,char*) ;

__attribute__((used)) static bool mnem_movc(char const*const*arg, ut16 pc, ut8**out) {
 if (r_str_casecmp (arg[0], "a")) {
  return 0;
 }
 if (!str_iwhitecasecmp (arg[1], "@a+dptr")
  || !str_iwhitecasecmp (arg[1], "[a+dptr]")) {
  return single_byte_instr (0x93, out);
 }
 if (!str_iwhitecasecmp (arg[1], "@a+pc")
  || !str_iwhitecasecmp (arg[1], "[a+pc]")) {
  return single_byte_instr (0x83, out);
 }
 return 0;
}
