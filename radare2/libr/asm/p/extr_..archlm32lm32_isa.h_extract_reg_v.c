
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut32 ;


 int RAsmLm32RegVMask ;
 int RAsmLm32RegVShift ;

__attribute__((used)) static ut8 extract_reg_v(ut32 instr_dword) {
 return (instr_dword & RAsmLm32RegVMask) >> RAsmLm32RegVShift;
}
