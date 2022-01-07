
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_2__ {char* string; int const op; int const mask; int arg1; int arg2; int arg3; int len; } ;


 int A_ADDR11 ;
 int A_ADDR16 ;
 int A_BIT ;
 int A_DIRECT ;
 int A_IMM16 ;
 int A_NONE ;
 int A_OFFSET ;
 int A_RI ;
 int A_RN ;
 TYPE_1__* _8051_ops ;
 char* _replace_register (char*,int,int) ;
 int arg_addr11 (int ,int const*) ;
 int const arg_bit (int const) ;
 int const arg_offset (int ,int const) ;
 char* r_str_new (char const*) ;
 char* r_str_newf (char const*,int const,...) ;
 char* strdup (char*) ;

__attribute__((used)) static char *r_8051_disas(ut64 pc, const ut8 *buf, int len, int *olen) {
 int i = 0;
 while (_8051_ops[i].string && _8051_ops[i].op != (buf[0] & ~_8051_ops[i].mask)) {
  i++;
 }

 if (_8051_ops[i].string) {

  const char* name = _8051_ops[i].string;
  ut8 mask = _8051_ops[i].mask;
  ut8 arg1 = _8051_ops[i].arg1;
  ut8 arg2 = _8051_ops[i].arg2;
  ut8 arg3 = _8051_ops[i].arg3;
  ut8 oplen = _8051_ops[i].len;
  ut8 val1 = 0, val2 = 0;
  char* disasm = 0;

  switch (oplen) {
  case 1:
   if ((arg1 == A_RI) || (arg1 == A_RN)) {

    disasm = r_str_newf (name, buf[0] & mask);
   } else {
    disasm = r_str_new (name);
   }
   break;
  case 2:
   if (len>1) {
    if (arg1 == A_OFFSET) {
     disasm = r_str_newf (name, arg_offset (pc + 2, buf[1]));
    } else if (arg1 == A_ADDR11) {
     disasm = r_str_newf (name, arg_addr11 (pc + 2, buf));
    } else if ((arg1 == A_RI) || (arg1 == A_RN)) {

     if (arg2 == A_OFFSET) {
      disasm = r_str_newf (name, buf[0] & mask, arg_offset (pc + 2, buf[1]));
     } else {
      disasm = r_str_newf (name, buf[0] & mask, buf[1]);
     }
     val2 = buf[1];
    } else if ((arg2 == A_RI) || (arg2 == A_RN)) {

     disasm = r_str_newf (name, buf[1], buf[0] & mask);
     val1 = buf[1];
    } else if (arg1 == A_BIT) {

     disasm = r_str_newf (name, arg_bit (buf[1]), buf[1] & 0x07);
     val1 = buf[1];
    } else {

     disasm = r_str_newf (name, buf[1]);
     val1 = buf[1];
    }
   } else {
    *olen = -1;
    return strdup ("truncated");
   }
   break;
  case 3:
   if (len > 2) {
    if ((arg1 == A_ADDR16) || (arg1 == A_IMM16)) {
     disasm = r_str_newf (name, 0x100 * buf[1] + buf[2]);
    } else if (arg1 == A_IMM16) {
     disasm = r_str_newf (name, 0x100 * buf[1] + buf[2]);
    } else if (arg2 == A_OFFSET) {
     if (mask != A_NONE) {

      disasm = r_str_newf (name, buf[0] & mask, buf[1], arg_offset (pc + 3, buf[1]));
     } else if (arg1 == A_BIT) {

      disasm = r_str_newf (name, arg_bit (buf[1]), buf[1] & 0x07, arg_offset (pc + 3, buf[2]));
      val1 = buf[1];
     } else {

      disasm = r_str_newf (name, buf[1], arg_offset (pc + 3, buf[2]));
      val1 = buf[1];
     }
    } else if (arg3 == A_OFFSET) {

     disasm = r_str_newf (name, buf[0] & mask, buf[1], arg_offset (pc + 3, buf[2]));
     val2 = buf[1];
    } else if (arg1 == A_DIRECT && arg2 == A_DIRECT) {

     disasm = r_str_newf (name, buf[2], buf[1]);
     val1 = buf[2];
     val2 = buf[1];
    } else {

     disasm = r_str_newf (name, buf[1], buf[2]);
     val1 = buf[1];
    }
   } else {
    *olen = -1;
    return strdup ("truncated");
   }
   break;
  default:

   return 0;
  }


  *olen = oplen;
  if (disasm) {
   disasm = _replace_register (disasm, arg1, val1);
   disasm = _replace_register (disasm, arg2, val2);
   return disasm;
  }
  return ((void*)0);
 }


 return 0;
}
