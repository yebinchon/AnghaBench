; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_sched_in.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_sched_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.preempt_notifier = type { i32 }
%struct.kvm_vcpu = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.preempt_notifier*, i32)* @kvm_sched_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_sched_in(%struct.preempt_notifier* %0, i32 %1) #0 {
  %3 = alloca %struct.preempt_notifier*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  store %struct.preempt_notifier* %0, %struct.preempt_notifier** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.preempt_notifier*, %struct.preempt_notifier** %3, align 8
  %7 = call %struct.kvm_vcpu* @preempt_notifier_to_vcpu(%struct.preempt_notifier* %6)
  store %struct.kvm_vcpu* %7, %struct.kvm_vcpu** %5, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @WRITE_ONCE(i32 %10, i32 0)
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %13 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @WRITE_ONCE(i32 %14, i32 0)
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @kvm_arch_sched_in(%struct.kvm_vcpu* %16, i32 %17)
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @kvm_arch_vcpu_load(%struct.kvm_vcpu* %19, i32 %20)
  ret void
}

declare dso_local %struct.kvm_vcpu* @preempt_notifier_to_vcpu(%struct.preempt_notifier*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @kvm_arch_sched_in(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_arch_vcpu_load(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
