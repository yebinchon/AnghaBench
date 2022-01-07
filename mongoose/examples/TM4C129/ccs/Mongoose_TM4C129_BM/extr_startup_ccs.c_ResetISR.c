
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void
ResetISR(void)
{




    __asm("    .global _c_int00\n"
          "    b.w     _c_int00");
}
