
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
typedef scalar_t__ ut32 ;
struct TYPE_3__ {unsigned int length; int syntax; } ;
typedef TYPE_1__ tms320_dasm_t ;


 char* c55plus_decode (int ,unsigned int*) ;
 int free (char*) ;
 int * ins_buff ;
 scalar_t__ ins_buff_len ;
 int snprintf (int ,int,char*,char*) ;
 size_t strlen (char*) ;
 char tolower (unsigned char) ;

int c55x_plus_disassemble(tms320_dasm_t *dasm, const ut8 *buf, int len) {
 unsigned int next_ins_pos;
 char *ins_decoded;
 size_t i, ins_decoded_len;

 ins_buff = (ut8 *)buf;
 ins_buff_len = (ut32)len;

 next_ins_pos = 0;


 ins_decoded = c55plus_decode(0, &next_ins_pos);
 dasm->length = next_ins_pos;
 if (!ins_decoded) {
  return 0;
 }


 dasm->length = next_ins_pos;
 ins_decoded_len = strlen(ins_decoded);
 for (i = 0; i < ins_decoded_len; i++) {
  {
   ins_decoded[i] = tolower ((unsigned char)ins_decoded[i]);
  }
 }
 snprintf (dasm->syntax, sizeof(dasm->syntax), "%s", ins_decoded);
 free (ins_decoded);

 return next_ins_pos;
}
