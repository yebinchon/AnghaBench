; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_arch_timer.c_kvm_timer_update_irq.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_arch_timer.c_kvm_timer_update_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, i32 }
%struct.arch_timer_context = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, i32, %struct.arch_timer_context*)* @kvm_timer_update_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_timer_update_irq(%struct.kvm_vcpu* %0, i32 %1, %struct.arch_timer_context* %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.arch_timer_context*, align 8
  %7 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.arch_timer_context* %2, %struct.arch_timer_context** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.arch_timer_context*, %struct.arch_timer_context** %6, align 8
  %10 = getelementptr inbounds %struct.arch_timer_context, %struct.arch_timer_context* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 %8, i32* %11, align 4
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %13 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.arch_timer_context*, %struct.arch_timer_context** %6, align 8
  %16 = getelementptr inbounds %struct.arch_timer_context, %struct.arch_timer_context* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.arch_timer_context*, %struct.arch_timer_context** %6, align 8
  %20 = getelementptr inbounds %struct.arch_timer_context, %struct.arch_timer_context* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @trace_kvm_timer_update_irq(i32 %14, i32 %18, i32 %22)
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %25 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @userspace_irqchip(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %48, label %29

29:                                               ; preds = %3
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %31 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %34 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.arch_timer_context*, %struct.arch_timer_context** %6, align 8
  %37 = getelementptr inbounds %struct.arch_timer_context, %struct.arch_timer_context* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.arch_timer_context*, %struct.arch_timer_context** %6, align 8
  %41 = getelementptr inbounds %struct.arch_timer_context, %struct.arch_timer_context* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.arch_timer_context*, %struct.arch_timer_context** %6, align 8
  %45 = call i32 @kvm_vgic_inject_irq(i32 %32, i32 %35, i32 %39, i32 %43, %struct.arch_timer_context* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @WARN_ON(i32 %46)
  br label %48

48:                                               ; preds = %29, %3
  ret void
}

declare dso_local i32 @trace_kvm_timer_update_irq(i32, i32, i32) #1

declare dso_local i32 @userspace_irqchip(i32) #1

declare dso_local i32 @kvm_vgic_inject_irq(i32, i32, i32, i32, %struct.arch_timer_context*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
