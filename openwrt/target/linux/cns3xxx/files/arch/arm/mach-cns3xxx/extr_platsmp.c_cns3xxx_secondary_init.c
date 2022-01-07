
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int boot_lock ;
 int cns3xxx_set_fiq_regs (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int write_pen_release (int) ;

__attribute__((used)) static void cns3xxx_secondary_init(unsigned int cpu)
{



 cns3xxx_set_fiq_regs(1);





 write_pen_release(-1);




 spin_lock(&boot_lock);
 spin_unlock(&boot_lock);
}
