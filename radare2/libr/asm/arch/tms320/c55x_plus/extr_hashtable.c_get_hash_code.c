
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ut32 ;
typedef int st32 ;
struct TYPE_2__ {int code; int (* hash_func ) (int,int) ;} ;


 scalar_t__ C55PLUS_DEBUG ;
 int get_ins_len (int) ;
 int get_ins_part (int,int) ;
 TYPE_1__* ins_hash ;
 int printf (char*,...) ;

st32 get_hash_code(ut32 ins_pos) {
 ut32 len, ins_part1;
 ut32 opcode, pos;
 st32 (*get_hashcode_func)(st32 arg, st32 arg2);
 ut32 ins_len;
 st32 arg, ins_part2, hash_code;

 ins_part1 = 0;
 ins_part2 = 0;

 opcode = get_ins_part(ins_pos, 1);
 ins_len = get_ins_len(opcode);

 if (C55PLUS_DEBUG) {
  printf("opcode: 0x%x part: %d\n", opcode, ins_pos);
  printf("ins_len: 0x%x\n", ins_len);
 }

 if (ins_len > 1 ) {
  len = ins_len - 1;
  if (len >= 4) {
   len = 4;
  }

  ins_part1 = get_ins_part(ins_pos + 1, len) << (8 * (4 - len));
  ins_part2 = 0;
  if (ins_len > 5) {
   ins_part2 = get_ins_part (ins_pos + 5, 1);
  }
 }

 pos = (2 * opcode | (ins_part1 >> 31));

 arg = ins_hash[pos].code;

 ins_part2 >>= 7;
 ins_part2 |= (ins_part1 * 2);


 get_hashcode_func = ins_hash[pos].hash_func;

 if (C55PLUS_DEBUG) {
  printf("hashfunc => %p 0x%x\n", get_hashcode_func, pos);
  printf("hashargs => 0x%x 0x%x 0x%x\n", (ut32)arg, ins_part1, ins_part2);
 }

 hash_code = get_hashcode_func(arg, ins_part2);
 if (C55PLUS_DEBUG) {
  printf ("ret hashcode: 0x%x\n", hash_code);
 }

 return hash_code;
}
