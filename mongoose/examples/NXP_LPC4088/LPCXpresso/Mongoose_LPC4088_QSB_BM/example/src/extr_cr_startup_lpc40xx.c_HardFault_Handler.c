
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__ ((section(".after_vectors")))
void HardFault_Handler(void)
{ while(1) {}
}
