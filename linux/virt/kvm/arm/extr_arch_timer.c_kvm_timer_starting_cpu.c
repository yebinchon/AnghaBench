
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kvm_timer_init_interrupt (int *) ;

__attribute__((used)) static int kvm_timer_starting_cpu(unsigned int cpu)
{
 kvm_timer_init_interrupt(((void*)0));
 return 0;
}
