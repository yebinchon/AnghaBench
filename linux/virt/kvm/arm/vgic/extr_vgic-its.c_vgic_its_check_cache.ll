; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_check_cache.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_check_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vgic_irq = type { i32 }
%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.vgic_dist }
%struct.vgic_dist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vgic_irq* (%struct.kvm*, i32, i32, i32)* @vgic_its_check_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vgic_irq* @vgic_its_check_cache(%struct.kvm* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vgic_dist*, align 8
  %10 = alloca %struct.vgic_irq*, align 8
  %11 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.kvm*, %struct.kvm** %5, align 8
  %13 = getelementptr inbounds %struct.kvm, %struct.kvm* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.vgic_dist* %14, %struct.vgic_dist** %9, align 8
  %15 = load %struct.vgic_dist*, %struct.vgic_dist** %9, align 8
  %16 = getelementptr inbounds %struct.vgic_dist, %struct.vgic_dist* %15, i32 0, i32 0
  %17 = load i64, i64* %11, align 8
  %18 = call i32 @raw_spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.vgic_dist*, %struct.vgic_dist** %9, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call %struct.vgic_irq* @__vgic_its_check_cache(%struct.vgic_dist* %19, i32 %20, i32 %21, i32 %22)
  store %struct.vgic_irq* %23, %struct.vgic_irq** %10, align 8
  %24 = load %struct.vgic_dist*, %struct.vgic_dist** %9, align 8
  %25 = getelementptr inbounds %struct.vgic_dist, %struct.vgic_dist* %24, i32 0, i32 0
  %26 = load i64, i64* %11, align 8
  %27 = call i32 @raw_spin_unlock_irqrestore(i32* %25, i64 %26)
  %28 = load %struct.vgic_irq*, %struct.vgic_irq** %10, align 8
  ret %struct.vgic_irq* %28
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.vgic_irq* @__vgic_its_check_cache(%struct.vgic_dist*, i32, i32, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
