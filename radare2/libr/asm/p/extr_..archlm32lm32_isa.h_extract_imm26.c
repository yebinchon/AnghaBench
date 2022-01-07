
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;


 int RAsmLm32Imm26Mask ;

__attribute__((used)) static ut32 extract_imm26(ut32 instr_dword) {
 return instr_dword & RAsmLm32Imm26Mask;
}
