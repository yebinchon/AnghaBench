
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut32 ;
typedef int amd29k_instr_t ;


 scalar_t__ AMD29K_HAS_BIT (int const*) ;
 int AMD29K_SET_INVALID (int *,int) ;
 int AMD29K_SET_VALUE (int *,int,int const,int ) ;
 int AMD29K_TYPE_IMM ;
 int AMD29K_TYPE_JMP ;
 int AMD29K_TYPE_REG ;

__attribute__((used)) static void decode_ra_i16_sh2(amd29k_instr_t* instruction, const ut8* buffer) {
 int word = (buffer[1] << 10) + (buffer[3] << 2);
 if (word & 0x20000) {
  word = (int)(0xfffc0000 | word);
 }
 AMD29K_SET_VALUE (instruction, 0, buffer[2], AMD29K_TYPE_REG);
 if (AMD29K_HAS_BIT (buffer)) {
  AMD29K_SET_VALUE (instruction, 1, word, AMD29K_TYPE_IMM);
 } else {
  AMD29K_SET_VALUE (instruction, 1, (ut32) word, AMD29K_TYPE_JMP);
 }
 AMD29K_SET_INVALID (instruction, 2);
 AMD29K_SET_INVALID (instruction, 3);
 AMD29K_SET_INVALID (instruction, 4);
 AMD29K_SET_INVALID (instruction, 5);
}
