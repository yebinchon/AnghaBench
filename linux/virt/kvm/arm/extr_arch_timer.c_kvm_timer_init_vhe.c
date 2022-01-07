
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int CNTHCTL_EL1PCEN ;
 int CNTHCTL_EL1PCTEN ;
 int cnthctl_el2 ;
 int read_sysreg (int ) ;
 int write_sysreg (int,int ) ;

void kvm_timer_init_vhe(void)
{

 u32 cnthctl_shift = 10;
 u64 val;





 val = read_sysreg(cnthctl_el2);
 val |= (CNTHCTL_EL1PCEN << cnthctl_shift);
 val |= (CNTHCTL_EL1PCTEN << cnthctl_shift);
 write_sysreg(val, cnthctl_el2);
}
