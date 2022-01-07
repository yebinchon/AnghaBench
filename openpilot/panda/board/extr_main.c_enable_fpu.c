
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long CPACR; } ;


 TYPE_1__* SCB ;

void __attribute__ ((noinline)) enable_fpu(void) {

  SCB->CPACR |= ((3UL << (10U * 2U)) | (3UL << (11U * 2U)));
}
