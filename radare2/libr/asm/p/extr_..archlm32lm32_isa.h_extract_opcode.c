
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut32 ;


 int RAsmLm32OpMask ;
 int RAsmLm32OpShift ;

__attribute__((used)) static ut8 extract_opcode(ut32 instr_dword) {
 return (instr_dword & RAsmLm32OpMask) >> RAsmLm32OpShift;
}
