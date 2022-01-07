; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_inject_cached_translation.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_inject_cached_translation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_msi = type { i32, i32, i32, i64 }
%struct.vgic_irq = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vgic_its_inject_cached_translation(%struct.kvm* %0, %struct.kvm_msi* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca %struct.kvm_msi*, align 8
  %6 = alloca %struct.vgic_irq*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store %struct.kvm_msi* %1, %struct.kvm_msi** %5, align 8
  %9 = load %struct.kvm_msi*, %struct.kvm_msi** %5, align 8
  %10 = getelementptr inbounds %struct.kvm_msi, %struct.kvm_msi* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = shl i32 %12, 32
  %14 = load %struct.kvm_msi*, %struct.kvm_msi** %5, align 8
  %15 = getelementptr inbounds %struct.kvm_msi, %struct.kvm_msi* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = or i32 %13, %16
  store i32 %17, i32* %8, align 4
  %18 = load %struct.kvm*, %struct.kvm** %4, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.kvm_msi*, %struct.kvm_msi** %5, align 8
  %21 = getelementptr inbounds %struct.kvm_msi, %struct.kvm_msi* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.kvm_msi*, %struct.kvm_msi** %5, align 8
  %24 = getelementptr inbounds %struct.kvm_msi, %struct.kvm_msi* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.vgic_irq* @vgic_its_check_cache(%struct.kvm* %18, i32 %19, i32 %22, i32 %25)
  store %struct.vgic_irq* %26, %struct.vgic_irq** %6, align 8
  %27 = load %struct.vgic_irq*, %struct.vgic_irq** %6, align 8
  %28 = icmp ne %struct.vgic_irq* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %41

30:                                               ; preds = %2
  %31 = load %struct.vgic_irq*, %struct.vgic_irq** %6, align 8
  %32 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %31, i32 0, i32 1
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @raw_spin_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.vgic_irq*, %struct.vgic_irq** %6, align 8
  %36 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  %37 = load %struct.kvm*, %struct.kvm** %4, align 8
  %38 = load %struct.vgic_irq*, %struct.vgic_irq** %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @vgic_queue_irq_unlock(%struct.kvm* %37, %struct.vgic_irq* %38, i64 %39)
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %30, %29
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.vgic_irq* @vgic_its_check_cache(%struct.kvm*, i32, i32, i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @vgic_queue_irq_unlock(%struct.kvm*, %struct.vgic_irq*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
