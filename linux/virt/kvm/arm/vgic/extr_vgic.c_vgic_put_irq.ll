; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic.c_vgic_put_irq.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic.c_vgic_put_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.vgic_dist }
%struct.vgic_dist = type { i32 }
%struct.vgic_irq = type { i64 }

@VGIC_MIN_LPI = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vgic_put_irq(%struct.kvm* %0, %struct.vgic_irq* %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca %struct.vgic_irq*, align 8
  %5 = alloca %struct.vgic_dist*, align 8
  %6 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store %struct.vgic_irq* %1, %struct.vgic_irq** %4, align 8
  %7 = load %struct.kvm*, %struct.kvm** %3, align 8
  %8 = getelementptr inbounds %struct.kvm, %struct.kvm* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.vgic_dist* %9, %struct.vgic_dist** %5, align 8
  %10 = load %struct.vgic_irq*, %struct.vgic_irq** %4, align 8
  %11 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @VGIC_MIN_LPI, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %28

16:                                               ; preds = %2
  %17 = load %struct.vgic_dist*, %struct.vgic_dist** %5, align 8
  %18 = getelementptr inbounds %struct.vgic_dist, %struct.vgic_dist* %17, i32 0, i32 0
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @raw_spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.kvm*, %struct.kvm** %3, align 8
  %22 = load %struct.vgic_irq*, %struct.vgic_irq** %4, align 8
  %23 = call i32 @__vgic_put_lpi_locked(%struct.kvm* %21, %struct.vgic_irq* %22)
  %24 = load %struct.vgic_dist*, %struct.vgic_dist** %5, align 8
  %25 = getelementptr inbounds %struct.vgic_dist, %struct.vgic_dist* %24, i32 0, i32 0
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @raw_spin_unlock_irqrestore(i32* %25, i64 %26)
  br label %28

28:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__vgic_put_lpi_locked(%struct.kvm*, %struct.vgic_irq*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
