
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CORE0_INT_CTR ;
 int put32 (int ,int) ;

void enable_interrupt_controller()
{

 put32(CORE0_INT_CTR, (1 << 1));
}
