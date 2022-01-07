
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int amd29k_instr_t ;


 scalar_t__ AMD29K_HAS_BIT (int const*) ;
 int AMD29K_SET_INVALID (int *,int) ;
 int AMD29K_SET_VALUE (int *,int ,int,int ) ;
 int AMD29K_TYPE_IMM ;
 int AMD29K_TYPE_JMP ;

__attribute__((used)) static void decode_imm16_sh2(amd29k_instr_t* instruction, const ut8* buffer) {
 int word = (buffer[1] << 10) + (buffer[3] << 2);
 if (word & 0x20000) {
  word = (int)(0xfffc0000 | word);
 }
 AMD29K_SET_VALUE (instruction, 0, word, AMD29K_HAS_BIT (buffer) ? AMD29K_TYPE_JMP : AMD29K_TYPE_IMM);
 AMD29K_SET_INVALID (instruction, 1);
 AMD29K_SET_INVALID (instruction, 2);
 AMD29K_SET_INVALID (instruction, 3);
 AMD29K_SET_INVALID (instruction, 4);
 AMD29K_SET_INVALID (instruction, 5);
}
