
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_OK ;
 int hardware_disable_nolock ;
 int kvm_rebooting ;
 int on_each_cpu (int ,int *,int) ;
 int pr_info (char*) ;

__attribute__((used)) static int kvm_reboot(struct notifier_block *notifier, unsigned long val,
        void *v)
{






 pr_info("kvm: exiting hardware virtualization\n");
 kvm_rebooting = 1;
 on_each_cpu(hardware_disable_nolock, ((void*)0), 1);
 return NOTIFY_OK;
}
