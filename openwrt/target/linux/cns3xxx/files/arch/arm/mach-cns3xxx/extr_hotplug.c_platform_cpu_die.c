
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_enter_lowpower () ;
 int cpu_leave_lowpower () ;
 int platform_do_lowpower (unsigned int,int*) ;
 int pr_warn (char*,unsigned int,int) ;

void platform_cpu_die(unsigned int cpu)
{
 int spurious = 0;




 cpu_enter_lowpower();
 platform_do_lowpower(cpu, &spurious);





 cpu_leave_lowpower();

 if (spurious)
  pr_warn("CPU%u: %u spurious wakeup calls\n", cpu, spurious);
}
