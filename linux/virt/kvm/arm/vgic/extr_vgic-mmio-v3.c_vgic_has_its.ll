; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio-v3.c_vgic_has_its.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio-v3.c_vgic_has_its.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.vgic_dist }
%struct.vgic_dist = type { i64, i32 }

@KVM_DEV_TYPE_ARM_VGIC_V3 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vgic_has_its(%struct.kvm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca %struct.vgic_dist*, align 8
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  %5 = load %struct.kvm*, %struct.kvm** %3, align 8
  %6 = getelementptr inbounds %struct.kvm, %struct.kvm* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.vgic_dist* %7, %struct.vgic_dist** %4, align 8
  %8 = load %struct.vgic_dist*, %struct.vgic_dist** %4, align 8
  %9 = getelementptr inbounds %struct.vgic_dist, %struct.vgic_dist* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @KVM_DEV_TYPE_ARM_VGIC_V3, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %18

14:                                               ; preds = %1
  %15 = load %struct.vgic_dist*, %struct.vgic_dist** %4, align 8
  %16 = getelementptr inbounds %struct.vgic_dist, %struct.vgic_dist* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %14, %13
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
