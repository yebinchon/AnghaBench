; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_arch_timer.c_kvm_timer_vcpu_reset.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_arch_timer.c_kvm_timer_vcpu_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.arch_timer_cpu = type { i64 }
%struct.timer_map = type { %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_10__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_14__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_timer_vcpu_reset(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.arch_timer_cpu*, align 8
  %4 = alloca %struct.timer_map, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %6 = call %struct.arch_timer_cpu* @vcpu_timer(%struct.kvm_vcpu* %5)
  store %struct.arch_timer_cpu* %6, %struct.arch_timer_cpu** %3, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %8 = call i32 @get_timer_map(%struct.kvm_vcpu* %7, %struct.timer_map* %4)
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %10 = call %struct.TYPE_14__* @vcpu_vtimer(%struct.kvm_vcpu* %9)
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %13 = call %struct.TYPE_14__* @vcpu_ptimer(%struct.kvm_vcpu* %12)
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load %struct.arch_timer_cpu*, %struct.arch_timer_cpu** %3, align 8
  %16 = getelementptr inbounds %struct.arch_timer_cpu, %struct.arch_timer_cpu* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %54

19:                                               ; preds = %1
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %22 = call %struct.TYPE_14__* @vcpu_vtimer(%struct.kvm_vcpu* %21)
  %23 = call i32 @kvm_timer_update_irq(%struct.kvm_vcpu* %20, i32 0, %struct.TYPE_14__* %22)
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %26 = call %struct.TYPE_14__* @vcpu_ptimer(%struct.kvm_vcpu* %25)
  %27 = call i32 @kvm_timer_update_irq(%struct.kvm_vcpu* %24, i32 0, %struct.TYPE_14__* %26)
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %29 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @irqchip_in_kernel(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %19
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %35 = getelementptr inbounds %struct.timer_map, %struct.timer_map* %4, i32 0, i32 2
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @kvm_vgic_reset_mapped_irq(%struct.kvm_vcpu* %34, i32 %39)
  %41 = getelementptr inbounds %struct.timer_map, %struct.timer_map* %4, i32 0, i32 1
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = icmp ne %struct.TYPE_12__* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %33
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %46 = getelementptr inbounds %struct.timer_map, %struct.timer_map* %4, i32 0, i32 1
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @kvm_vgic_reset_mapped_irq(%struct.kvm_vcpu* %45, i32 %50)
  br label %52

52:                                               ; preds = %44, %33
  br label %53

53:                                               ; preds = %52, %19
  br label %54

54:                                               ; preds = %53, %1
  %55 = getelementptr inbounds %struct.timer_map, %struct.timer_map* %4, i32 0, i32 0
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %55, align 8
  %57 = icmp ne %struct.TYPE_13__* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.timer_map, %struct.timer_map* %4, i32 0, i32 0
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = call i32 @soft_timer_cancel(i32* %61)
  br label %63

63:                                               ; preds = %58, %54
  ret i32 0
}

declare dso_local %struct.arch_timer_cpu* @vcpu_timer(%struct.kvm_vcpu*) #1

declare dso_local i32 @get_timer_map(%struct.kvm_vcpu*, %struct.timer_map*) #1

declare dso_local %struct.TYPE_14__* @vcpu_vtimer(%struct.kvm_vcpu*) #1

declare dso_local %struct.TYPE_14__* @vcpu_ptimer(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_timer_update_irq(%struct.kvm_vcpu*, i32, %struct.TYPE_14__*) #1

declare dso_local i64 @irqchip_in_kernel(i32) #1

declare dso_local i32 @kvm_vgic_reset_mapped_irq(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @soft_timer_cancel(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
