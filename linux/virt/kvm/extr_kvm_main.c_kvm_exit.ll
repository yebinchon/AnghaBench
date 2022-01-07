; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_exit.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kvm_debugfs_dir = common dso_local global i32 0, align 4
@kvm_dev = common dso_local global i32 0, align 4
@kvm_vcpu_cache = common dso_local global i32 0, align 4
@kvm_syscore_ops = common dso_local global i32 0, align 4
@kvm_reboot_notifier = common dso_local global i32 0, align 4
@CPUHP_AP_KVM_STARTING = common dso_local global i32 0, align 4
@hardware_disable_nolock = common dso_local global i32 0, align 4
@cpus_hardware_enabled = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_exit() #0 {
  %1 = load i32, i32* @kvm_debugfs_dir, align 4
  %2 = call i32 @debugfs_remove_recursive(i32 %1)
  %3 = call i32 @misc_deregister(i32* @kvm_dev)
  %4 = load i32, i32* @kvm_vcpu_cache, align 4
  %5 = call i32 @kmem_cache_destroy(i32 %4)
  %6 = call i32 (...) @kvm_async_pf_deinit()
  %7 = call i32 @unregister_syscore_ops(i32* @kvm_syscore_ops)
  %8 = call i32 @unregister_reboot_notifier(i32* @kvm_reboot_notifier)
  %9 = load i32, i32* @CPUHP_AP_KVM_STARTING, align 4
  %10 = call i32 @cpuhp_remove_state_nocalls(i32 %9)
  %11 = load i32, i32* @hardware_disable_nolock, align 4
  %12 = call i32 @on_each_cpu(i32 %11, i32* null, i32 1)
  %13 = call i32 (...) @kvm_arch_hardware_unsetup()
  %14 = call i32 (...) @kvm_arch_exit()
  %15 = call i32 (...) @kvm_irqfd_exit()
  %16 = load i32, i32* @cpus_hardware_enabled, align 4
  %17 = call i32 @free_cpumask_var(i32 %16)
  %18 = call i32 (...) @kvm_vfio_ops_exit()
  ret void
}

declare dso_local i32 @debugfs_remove_recursive(i32) #1

declare dso_local i32 @misc_deregister(i32*) #1

declare dso_local i32 @kmem_cache_destroy(i32) #1

declare dso_local i32 @kvm_async_pf_deinit(...) #1

declare dso_local i32 @unregister_syscore_ops(i32*) #1

declare dso_local i32 @unregister_reboot_notifier(i32*) #1

declare dso_local i32 @cpuhp_remove_state_nocalls(i32) #1

declare dso_local i32 @on_each_cpu(i32, i32*, i32) #1

declare dso_local i32 @kvm_arch_hardware_unsetup(...) #1

declare dso_local i32 @kvm_arch_exit(...) #1

declare dso_local i32 @kvm_irqfd_exit(...) #1

declare dso_local i32 @free_cpumask_var(i32) #1

declare dso_local i32 @kvm_vfio_ops_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
