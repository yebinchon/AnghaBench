
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPUHP_AP_KVM_STARTING ;
 int cpuhp_remove_state_nocalls (int ) ;
 int cpus_hardware_enabled ;
 int debugfs_remove_recursive (int ) ;
 int free_cpumask_var (int ) ;
 int hardware_disable_nolock ;
 int kmem_cache_destroy (int ) ;
 int kvm_arch_exit () ;
 int kvm_arch_hardware_unsetup () ;
 int kvm_async_pf_deinit () ;
 int kvm_debugfs_dir ;
 int kvm_dev ;
 int kvm_irqfd_exit () ;
 int kvm_reboot_notifier ;
 int kvm_syscore_ops ;
 int kvm_vcpu_cache ;
 int kvm_vfio_ops_exit () ;
 int misc_deregister (int *) ;
 int on_each_cpu (int ,int *,int) ;
 int unregister_reboot_notifier (int *) ;
 int unregister_syscore_ops (int *) ;

void kvm_exit(void)
{
 debugfs_remove_recursive(kvm_debugfs_dir);
 misc_deregister(&kvm_dev);
 kmem_cache_destroy(kvm_vcpu_cache);
 kvm_async_pf_deinit();
 unregister_syscore_ops(&kvm_syscore_ops);
 unregister_reboot_notifier(&kvm_reboot_notifier);
 cpuhp_remove_state_nocalls(CPUHP_AP_KVM_STARTING);
 on_each_cpu(hardware_disable_nolock, ((void*)0), 1);
 kvm_arch_hardware_unsetup();
 kvm_arch_exit();
 kvm_irqfd_exit();
 free_cpumask_var(cpus_hardware_enabled);
 kvm_vfio_ops_exit();
}
