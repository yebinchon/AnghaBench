
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG_PTR ;


 int FIXME (char*,scalar_t__) ;
 scalar_t__ NB_FRAME_REGS ;

__attribute__((used)) static int valid_reg(ULONG_PTR reg)
{
    if (reg >= NB_FRAME_REGS) FIXME("unsupported reg %lx\n", reg);
    return (reg < NB_FRAME_REGS);
}
