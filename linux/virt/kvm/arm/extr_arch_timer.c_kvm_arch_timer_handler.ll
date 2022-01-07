; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_arch_timer.c_kvm_arch_timer_handler.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_arch_timer.c_kvm_arch_timer_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.arch_timer_context = type { i32 }
%struct.timer_map = type { %struct.arch_timer_context*, %struct.arch_timer_context* }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@host_vtimer_irq = common dso_local global i32 0, align 4
@has_gic_active_state = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @kvm_arch_timer_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_arch_timer_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca %struct.arch_timer_context*, align 8
  %8 = alloca %struct.timer_map, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.kvm_vcpu**
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  store %struct.kvm_vcpu* %11, %struct.kvm_vcpu** %6, align 8
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %13 = icmp ne %struct.kvm_vcpu* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %15, i32* %3, align 4
  br label %50

16:                                               ; preds = %2
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %18 = call i32 @get_timer_map(%struct.kvm_vcpu* %17, %struct.timer_map* %8)
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @host_vtimer_irq, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.timer_map, %struct.timer_map* %8, i32 0, i32 1
  %24 = load %struct.arch_timer_context*, %struct.arch_timer_context** %23, align 8
  store %struct.arch_timer_context* %24, %struct.arch_timer_context** %7, align 8
  br label %28

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.timer_map, %struct.timer_map* %8, i32 0, i32 0
  %27 = load %struct.arch_timer_context*, %struct.arch_timer_context** %26, align 8
  store %struct.arch_timer_context* %27, %struct.arch_timer_context** %7, align 8
  br label %28

28:                                               ; preds = %25, %22
  %29 = load %struct.arch_timer_context*, %struct.arch_timer_context** %7, align 8
  %30 = call i64 @kvm_timer_should_fire(%struct.arch_timer_context* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %34 = load %struct.arch_timer_context*, %struct.arch_timer_context** %7, align 8
  %35 = call i32 @kvm_timer_update_irq(%struct.kvm_vcpu* %33, i32 1, %struct.arch_timer_context* %34)
  br label %36

36:                                               ; preds = %32, %28
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %38 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @userspace_irqchip(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = call i32 @static_branch_unlikely(i32* @has_gic_active_state)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* @host_vtimer_irq, align 4
  %47 = call i32 @disable_percpu_irq(i32 %46)
  br label %48

48:                                               ; preds = %45, %42, %36
  %49 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %14
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @get_timer_map(%struct.kvm_vcpu*, %struct.timer_map*) #1

declare dso_local i64 @kvm_timer_should_fire(%struct.arch_timer_context*) #1

declare dso_local i32 @kvm_timer_update_irq(%struct.kvm_vcpu*, i32, %struct.arch_timer_context*) #1

declare dso_local i64 @userspace_irqchip(i32) #1

declare dso_local i32 @static_branch_unlikely(i32*) #1

declare dso_local i32 @disable_percpu_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
