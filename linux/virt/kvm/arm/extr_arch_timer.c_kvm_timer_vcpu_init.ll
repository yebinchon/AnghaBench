; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_arch_timer.c_kvm_timer_vcpu_init.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_arch_timer.c_kvm_timer_vcpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.kvm_vcpu = type { i32 }
%struct.arch_timer_cpu = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }
%struct.arch_timer_context = type { %struct.kvm_vcpu*, i32, i32, %struct.TYPE_5__, %struct.TYPE_6__, i64 }
%struct.TYPE_5__ = type { i32 }

@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_ABS = common dso_local global i32 0, align 4
@kvm_bg_timer_expire = common dso_local global i8* null, align 8
@kvm_hrtimer_expire = common dso_local global i8* null, align 8
@default_vtimer_irq = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@default_ptimer_irq = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@host_vtimer_irq = common dso_local global i32 0, align 4
@host_ptimer_irq = common dso_local global i32 0, align 4
@host_vtimer_irq_flags = common dso_local global i32 0, align 4
@host_ptimer_irq_flags = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_timer_vcpu_init(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.arch_timer_cpu*, align 8
  %4 = alloca %struct.arch_timer_context*, align 8
  %5 = alloca %struct.arch_timer_context*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %7 = call %struct.arch_timer_cpu* @vcpu_timer(%struct.kvm_vcpu* %6)
  store %struct.arch_timer_cpu* %7, %struct.arch_timer_cpu** %3, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %9 = call %struct.arch_timer_context* @vcpu_vtimer(%struct.kvm_vcpu* %8)
  store %struct.arch_timer_context* %9, %struct.arch_timer_context** %4, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %11 = call %struct.arch_timer_context* @vcpu_ptimer(%struct.kvm_vcpu* %10)
  store %struct.arch_timer_context* %11, %struct.arch_timer_context** %5, align 8
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %13 = call i32 (...) @kvm_phys_timer_read()
  %14 = call i32 @update_vtimer_cntvoff(%struct.kvm_vcpu* %12, i32 %13)
  %15 = load %struct.arch_timer_context*, %struct.arch_timer_context** %5, align 8
  %16 = getelementptr inbounds %struct.arch_timer_context, %struct.arch_timer_context* %15, i32 0, i32 5
  store i64 0, i64* %16, align 8
  %17 = load %struct.arch_timer_cpu*, %struct.arch_timer_cpu** %3, align 8
  %18 = getelementptr inbounds %struct.arch_timer_cpu, %struct.arch_timer_cpu* %17, i32 0, i32 0
  %19 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %20 = load i32, i32* @HRTIMER_MODE_ABS, align 4
  %21 = call i32 @hrtimer_init(%struct.TYPE_6__* %18, i32 %19, i32 %20)
  %22 = load i8*, i8** @kvm_bg_timer_expire, align 8
  %23 = load %struct.arch_timer_cpu*, %struct.arch_timer_cpu** %3, align 8
  %24 = getelementptr inbounds %struct.arch_timer_cpu, %struct.arch_timer_cpu* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i8* %22, i8** %25, align 8
  %26 = load %struct.arch_timer_context*, %struct.arch_timer_context** %4, align 8
  %27 = getelementptr inbounds %struct.arch_timer_context, %struct.arch_timer_context* %26, i32 0, i32 4
  %28 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %29 = load i32, i32* @HRTIMER_MODE_ABS, align 4
  %30 = call i32 @hrtimer_init(%struct.TYPE_6__* %27, i32 %28, i32 %29)
  %31 = load %struct.arch_timer_context*, %struct.arch_timer_context** %5, align 8
  %32 = getelementptr inbounds %struct.arch_timer_context, %struct.arch_timer_context* %31, i32 0, i32 4
  %33 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %34 = load i32, i32* @HRTIMER_MODE_ABS, align 4
  %35 = call i32 @hrtimer_init(%struct.TYPE_6__* %32, i32 %33, i32 %34)
  %36 = load i8*, i8** @kvm_hrtimer_expire, align 8
  %37 = load %struct.arch_timer_context*, %struct.arch_timer_context** %4, align 8
  %38 = getelementptr inbounds %struct.arch_timer_context, %struct.arch_timer_context* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i8* %36, i8** %39, align 8
  %40 = load i8*, i8** @kvm_hrtimer_expire, align 8
  %41 = load %struct.arch_timer_context*, %struct.arch_timer_context** %5, align 8
  %42 = getelementptr inbounds %struct.arch_timer_context, %struct.arch_timer_context* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i8* %40, i8** %43, align 8
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @default_vtimer_irq, i32 0, i32 0), align 4
  %45 = load %struct.arch_timer_context*, %struct.arch_timer_context** %4, align 8
  %46 = getelementptr inbounds %struct.arch_timer_context, %struct.arch_timer_context* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @default_ptimer_irq, i32 0, i32 0), align 4
  %49 = load %struct.arch_timer_context*, %struct.arch_timer_context** %5, align 8
  %50 = getelementptr inbounds %struct.arch_timer_context, %struct.arch_timer_context* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load i32, i32* @host_vtimer_irq, align 4
  %53 = load %struct.arch_timer_context*, %struct.arch_timer_context** %4, align 8
  %54 = getelementptr inbounds %struct.arch_timer_context, %struct.arch_timer_context* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @host_ptimer_irq, align 4
  %56 = load %struct.arch_timer_context*, %struct.arch_timer_context** %5, align 8
  %57 = getelementptr inbounds %struct.arch_timer_context, %struct.arch_timer_context* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @host_vtimer_irq_flags, align 4
  %59 = load %struct.arch_timer_context*, %struct.arch_timer_context** %4, align 8
  %60 = getelementptr inbounds %struct.arch_timer_context, %struct.arch_timer_context* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @host_ptimer_irq_flags, align 4
  %62 = load %struct.arch_timer_context*, %struct.arch_timer_context** %5, align 8
  %63 = getelementptr inbounds %struct.arch_timer_context, %struct.arch_timer_context* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %65 = load %struct.arch_timer_context*, %struct.arch_timer_context** %4, align 8
  %66 = getelementptr inbounds %struct.arch_timer_context, %struct.arch_timer_context* %65, i32 0, i32 0
  store %struct.kvm_vcpu* %64, %struct.kvm_vcpu** %66, align 8
  %67 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %68 = load %struct.arch_timer_context*, %struct.arch_timer_context** %5, align 8
  %69 = getelementptr inbounds %struct.arch_timer_context, %struct.arch_timer_context* %68, i32 0, i32 0
  store %struct.kvm_vcpu* %67, %struct.kvm_vcpu** %69, align 8
  ret void
}

declare dso_local %struct.arch_timer_cpu* @vcpu_timer(%struct.kvm_vcpu*) #1

declare dso_local %struct.arch_timer_context* @vcpu_vtimer(%struct.kvm_vcpu*) #1

declare dso_local %struct.arch_timer_context* @vcpu_ptimer(%struct.kvm_vcpu*) #1

declare dso_local i32 @update_vtimer_cntvoff(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_phys_timer_read(...) #1

declare dso_local i32 @hrtimer_init(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
