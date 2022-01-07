
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct instr_info {int dummy; } ;
typedef int DWORD ;
typedef int BOOL ;


 int D3DSP_REGNUM_MASK ;
 int sprintf (char*,char*,int,double,double,double,double) ;

__attribute__((used)) static int instr_def(const struct instr_info *info, DWORD **ptr, char *buffer, BOOL ps)
{
    int len = sprintf(buffer, "    def c%d, %g, %g, %g, %g\n", *(*ptr+1) & D3DSP_REGNUM_MASK,
                      (double)*(float*)(*ptr+2), (double)*(float*)(*ptr+3),
                      (double)*(float*)(*ptr+4), (double)*(float*)(*ptr+5));
    *ptr += 6;
    return len;
}
