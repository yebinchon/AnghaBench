
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut8 ;


 scalar_t__ A_BIT ;
 scalar_t__ A_DIRECT ;
 char** _8051_regs ;
 scalar_t__ arg_bit (scalar_t__) ;
 char* r_str_replace (char*,char*,char*,int ) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static char* _replace_register(char* disasm, ut8 arg, ut8 val) {
 char key[10];
 char subst[10];
 if (arg == A_DIRECT) {
  if (_8051_regs[val]) {
   sprintf (key, " 0x%02x", val);
   sprintf (subst, " %s", _8051_regs[val]);
   disasm = r_str_replace (disasm, key, subst, 0);
  }
 } else if (arg == A_BIT) {
  val = arg_bit (val);
  if (_8051_regs[val]) {
   sprintf (key, "0x%02x.", val);
   sprintf (subst, "%s.", _8051_regs[val]);
   disasm = r_str_replace (disasm, key, subst, 0);
  }
 }
 return disasm;
}
