
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IFX_REG_W32_MASK (int ,unsigned int,int ) ;
 int PP32_FREEZE ;

void ifx_pp32_stop(int pp32)
{
    unsigned int mask = 1 << (pp32 << 4);


    IFX_REG_W32_MASK(0, mask, PP32_FREEZE);
}
