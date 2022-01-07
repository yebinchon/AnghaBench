
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef scalar_t__ ut16 ;


 int mnem_ajmp (char const* const*,scalar_t__,int **) ;
 int mnem_ljmp (char const* const*,scalar_t__,int **) ;
 int mnem_sjmp (char const* const*,scalar_t__,int **) ;
 int single_byte_instr (int,int **) ;
 int str_iwhitecasecmp (char const* const,char*) ;
 int to_address (char const* const,scalar_t__*) ;

__attribute__((used)) static bool mnem_jmp(char const*const*arg, ut16 pc, ut8**out) {
 if (!str_iwhitecasecmp (arg[0], "@a+dptr")
  || !str_iwhitecasecmp (arg[0], "[a+dptr]")) {
  return single_byte_instr (0x73, out);
 }

 ut16 address;
 if (!to_address (arg[0], &address)) {
  return 0;
 }
 ut16 reladdr;
 if ( pc < address ) {
  reladdr = address - pc;
 }
 else {
  reladdr = pc - address;
 }

 if ( reladdr < 0x100 ) {
  return mnem_sjmp (arg, pc, out);
 }
 else if ( reladdr < 0x08FF ) {
  return mnem_ajmp (arg, pc, out);
 }
 else {
  return mnem_ljmp (arg, pc, out);
 }
}
