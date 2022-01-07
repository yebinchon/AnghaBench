
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int ENOSYS ;
 int HZ ;
 int arch_send_wakeup_ipi_mask (int ) ;
 int boot_lock ;
 int cpumask_of (unsigned int) ;
 int jiffies ;
 int pen_release ;
 int smp_rmb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ time_before (int,unsigned long) ;
 int udelay (int) ;
 int write_pen_release (unsigned int) ;

__attribute__((used)) static int cns3xxx_boot_secondary(unsigned int cpu, struct task_struct *idle)
{
 unsigned long timeout;





 spin_lock(&boot_lock);
 write_pen_release(cpu);






 arch_send_wakeup_ipi_mask(cpumask_of(cpu));;

 timeout = jiffies + (1 * HZ);
 while (time_before(jiffies, timeout)) {
  smp_rmb();
  if (pen_release == -1)
   break;

  udelay(10);
 }





 spin_unlock(&boot_lock);

 return pen_release != -1 ? -ENOSYS : 0;
}
