; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_arch_timer.c_kvm_timer_update_run.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_arch_timer.c_kvm_timer_update_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.kvm_sync_regs }
%struct.kvm_sync_regs = type { i32 }
%struct.arch_timer_context = type { i32 }

@KVM_ARM_DEV_EL1_VTIMER = common dso_local global i32 0, align 4
@KVM_ARM_DEV_EL1_PTIMER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_timer_update_run(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.arch_timer_context*, align 8
  %4 = alloca %struct.arch_timer_context*, align 8
  %5 = alloca %struct.kvm_sync_regs*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %7 = call %struct.arch_timer_context* @vcpu_vtimer(%struct.kvm_vcpu* %6)
  store %struct.arch_timer_context* %7, %struct.arch_timer_context** %3, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %9 = call %struct.arch_timer_context* @vcpu_ptimer(%struct.kvm_vcpu* %8)
  store %struct.arch_timer_context* %9, %struct.arch_timer_context** %4, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %11 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.kvm_sync_regs* %14, %struct.kvm_sync_regs** %5, align 8
  %15 = load i32, i32* @KVM_ARM_DEV_EL1_VTIMER, align 4
  %16 = load i32, i32* @KVM_ARM_DEV_EL1_PTIMER, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load %struct.kvm_sync_regs*, %struct.kvm_sync_regs** %5, align 8
  %20 = getelementptr inbounds %struct.kvm_sync_regs, %struct.kvm_sync_regs* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.arch_timer_context*, %struct.arch_timer_context** %3, align 8
  %24 = call i64 @kvm_timer_should_fire(%struct.arch_timer_context* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %1
  %27 = load i32, i32* @KVM_ARM_DEV_EL1_VTIMER, align 4
  %28 = load %struct.kvm_sync_regs*, %struct.kvm_sync_regs** %5, align 8
  %29 = getelementptr inbounds %struct.kvm_sync_regs, %struct.kvm_sync_regs* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %26, %1
  %33 = load %struct.arch_timer_context*, %struct.arch_timer_context** %4, align 8
  %34 = call i64 @kvm_timer_should_fire(%struct.arch_timer_context* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i32, i32* @KVM_ARM_DEV_EL1_PTIMER, align 4
  %38 = load %struct.kvm_sync_regs*, %struct.kvm_sync_regs** %5, align 8
  %39 = getelementptr inbounds %struct.kvm_sync_regs, %struct.kvm_sync_regs* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %36, %32
  ret void
}

declare dso_local %struct.arch_timer_context* @vcpu_vtimer(%struct.kvm_vcpu*) #1

declare dso_local %struct.arch_timer_context* @vcpu_ptimer(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_timer_should_fire(%struct.arch_timer_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
