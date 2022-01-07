; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_trigger_msi.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_trigger_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.vgic_its = type { i32 }
%struct.vgic_irq = type { i32, i32, i32, i64 }

@IRQCHIP_STATE_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, %struct.vgic_its*, i32, i32)* @vgic_its_trigger_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgic_its_trigger_msi(%struct.kvm* %0, %struct.vgic_its* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm*, align 8
  %7 = alloca %struct.vgic_its*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vgic_irq*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %6, align 8
  store %struct.vgic_its* %1, %struct.vgic_its** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.vgic_irq* null, %struct.vgic_irq** %10, align 8
  %13 = load %struct.kvm*, %struct.kvm** %6, align 8
  %14 = load %struct.vgic_its*, %struct.vgic_its** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @vgic_its_resolve_lpi(%struct.kvm* %13, %struct.vgic_its* %14, i32 %15, i32 %16, %struct.vgic_irq** %10)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %5, align 4
  br label %44

22:                                               ; preds = %4
  %23 = load %struct.vgic_irq*, %struct.vgic_irq** %10, align 8
  %24 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.vgic_irq*, %struct.vgic_irq** %10, align 8
  %29 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @IRQCHIP_STATE_PENDING, align 4
  %32 = call i32 @irq_set_irqchip_state(i32 %30, i32 %31, i32 1)
  store i32 %32, i32* %5, align 4
  br label %44

33:                                               ; preds = %22
  %34 = load %struct.vgic_irq*, %struct.vgic_irq** %10, align 8
  %35 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %34, i32 0, i32 1
  %36 = load i64, i64* %11, align 8
  %37 = call i32 @raw_spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.vgic_irq*, %struct.vgic_irq** %10, align 8
  %39 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load %struct.kvm*, %struct.kvm** %6, align 8
  %41 = load %struct.vgic_irq*, %struct.vgic_irq** %10, align 8
  %42 = load i64, i64* %11, align 8
  %43 = call i32 @vgic_queue_irq_unlock(%struct.kvm* %40, %struct.vgic_irq* %41, i64 %42)
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %33, %27, %20
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @vgic_its_resolve_lpi(%struct.kvm*, %struct.vgic_its*, i32, i32, %struct.vgic_irq**) #1

declare dso_local i32 @irq_set_irqchip_state(i32, i32, i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @vgic_queue_irq_unlock(%struct.kvm*, %struct.vgic_irq*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
