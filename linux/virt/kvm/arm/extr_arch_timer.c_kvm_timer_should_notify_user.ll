; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_arch_timer.c_kvm_timer_should_notify_user.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_arch_timer.c_kvm_timer_should_notify_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.kvm_sync_regs }
%struct.kvm_sync_regs = type { i32 }
%struct.arch_timer_context = type { i32 }

@KVM_ARM_DEV_EL1_VTIMER = common dso_local global i32 0, align 4
@KVM_ARM_DEV_EL1_PTIMER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_timer_should_notify_user(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.arch_timer_context*, align 8
  %5 = alloca %struct.arch_timer_context*, align 8
  %6 = alloca %struct.kvm_sync_regs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %10 = call %struct.arch_timer_context* @vcpu_vtimer(%struct.kvm_vcpu* %9)
  store %struct.arch_timer_context* %10, %struct.arch_timer_context** %4, align 8
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %12 = call %struct.arch_timer_context* @vcpu_ptimer(%struct.kvm_vcpu* %11)
  store %struct.arch_timer_context* %12, %struct.arch_timer_context** %5, align 8
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %14 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.kvm_sync_regs* %17, %struct.kvm_sync_regs** %6, align 8
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %19 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @irqchip_in_kernel(i32 %20)
  %22 = call i64 @likely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %48

25:                                               ; preds = %1
  %26 = load %struct.kvm_sync_regs*, %struct.kvm_sync_regs** %6, align 8
  %27 = getelementptr inbounds %struct.kvm_sync_regs, %struct.kvm_sync_regs* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @KVM_ARM_DEV_EL1_VTIMER, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %7, align 4
  %31 = load %struct.kvm_sync_regs*, %struct.kvm_sync_regs** %6, align 8
  %32 = getelementptr inbounds %struct.kvm_sync_regs, %struct.kvm_sync_regs* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @KVM_ARM_DEV_EL1_PTIMER, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %8, align 4
  %36 = load %struct.arch_timer_context*, %struct.arch_timer_context** %4, align 8
  %37 = call i32 @kvm_timer_should_fire(%struct.arch_timer_context* %36)
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %45, label %40

40:                                               ; preds = %25
  %41 = load %struct.arch_timer_context*, %struct.arch_timer_context** %5, align 8
  %42 = call i32 @kvm_timer_should_fire(%struct.arch_timer_context* %41)
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %42, %43
  br label %45

45:                                               ; preds = %40, %25
  %46 = phi i1 [ true, %25 ], [ %44, %40 ]
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %45, %24
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.arch_timer_context* @vcpu_vtimer(%struct.kvm_vcpu*) #1

declare dso_local %struct.arch_timer_context* @vcpu_ptimer(%struct.kvm_vcpu*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @irqchip_in_kernel(i32) #1

declare dso_local i32 @kvm_timer_should_fire(%struct.arch_timer_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
