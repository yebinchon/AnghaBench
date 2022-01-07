
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int CV_ARM_CPSR ;
 int CV_ARM_NOREG ;
 int CV_ARM_R0 ;
 int FIXME (char*,unsigned int) ;

__attribute__((used)) static unsigned arm_map_dwarf_register(unsigned regno, BOOL eh_frame)
{
    if (regno <= 15) return CV_ARM_R0 + regno;
    if (regno == 128) return CV_ARM_CPSR;

    FIXME("Don't know how to map register %d\n", regno);
    return CV_ARM_NOREG;
}
