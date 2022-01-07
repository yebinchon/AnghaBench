
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef scalar_t__ ut32 ;
typedef int st32 ;


 char* do_decode (scalar_t__,scalar_t__,int,scalar_t__*,int*,int*) ;
 int free (char*) ;
 int get_ins_part (scalar_t__,int) ;
 scalar_t__ ins_buff_len ;
 char* strcat_dup (char*,char*,int) ;

char *c55plus_decode(ut32 ins_pos, ut32 *next_ins_pos) {
 ut8 opcode, two_ins = 0;
 ut32 next_ins1_pos, next_ins2_pos;
 st32 hash_code;
 char *ins1, *ins2, *aux, *ins_res;
 int err_code;

 if (ins_pos >= ins_buff_len) {
  return ((void*)0);
 }
 ins_res = ((void*)0);
 err_code = 0;

 opcode = get_ins_part(ins_pos, 1);
 if ((opcode & 0xF0) == 0x30) {
  two_ins = opcode & 0x0F;
  if(two_ins < 4) {
   two_ins += 0xF;
  }
 } else {
  two_ins = 0;
 }


 if (two_ins) {
  ins1 = do_decode(1, ins_pos, two_ins, &next_ins1_pos, &hash_code, &err_code);
  if (err_code < 0) {
   free (ins1);
   return ((void*)0);
  }
  ins2 = do_decode(next_ins1_pos + 1, ins_pos, two_ins, &next_ins2_pos, ((void*)0), &err_code);
  if (err_code < 0) {
   free (ins1);
   free (ins2);
   return ((void*)0);
  }
  *next_ins_pos = next_ins2_pos;

  if (hash_code == 0xF0 || hash_code == 0xF1) {
   aux = strcat_dup(ins2, " || ", 1);
   ins_res = strcat_dup(aux, ins1, 1);
   free(ins1);
  } else {
   aux = strcat_dup(ins1, " || ", 1);
   ins_res = strcat_dup(aux, ins2, 1);
   free(ins2);
  }
  *next_ins_pos = next_ins1_pos + next_ins2_pos + 1;
  if(*next_ins_pos != two_ins) {

   err_code = -1;
   free (ins_res);
   return ((void*)0);
  }
 } else {
  ins_res = do_decode(0, ins_pos, two_ins, &next_ins1_pos, &hash_code, &err_code);
  if (err_code < 0) {
   free (ins_res);
   return ((void*)0);
  }
  *next_ins_pos = next_ins1_pos;
 }

 return ins_res;
}
