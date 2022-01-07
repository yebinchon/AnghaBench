
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ REG_INT_MASK_CLR ;

void NwpUnMaskInterrupt()
{
 (*(unsigned long *)REG_INT_MASK_CLR) = 0x1;
}
