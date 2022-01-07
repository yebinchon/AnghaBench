
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;
typedef int ut16 ;


 int RAsmLm32Imm16Mask ;

__attribute__((used)) static ut16 extract_imm16(ut32 instr_dword) {
 return instr_dword & RAsmLm32Imm16Mask;
}
