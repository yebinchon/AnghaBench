; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic.h_vgic_dist_overlap.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic.h_vgic_dist_overlap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.vgic_dist }
%struct.vgic_dist = type { i64 }

@KVM_VGIC_V3_DIST_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, i64, i64)* @vgic_dist_overlap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgic_dist_overlap(%struct.kvm* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.vgic_dist*, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.kvm*, %struct.kvm** %4, align 8
  %9 = getelementptr inbounds %struct.kvm, %struct.kvm* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.vgic_dist* %10, %struct.vgic_dist** %7, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = add i64 %11, %12
  %14 = load %struct.vgic_dist*, %struct.vgic_dist** %7, align 8
  %15 = getelementptr inbounds %struct.vgic_dist, %struct.vgic_dist* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ugt i64 %13, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.vgic_dist*, %struct.vgic_dist** %7, align 8
  %21 = getelementptr inbounds %struct.vgic_dist, %struct.vgic_dist* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @KVM_VGIC_V3_DIST_SIZE, align 8
  %24 = add nsw i64 %22, %23
  %25 = icmp slt i64 %19, %24
  br label %26

26:                                               ; preds = %18, %3
  %27 = phi i1 [ false, %3 ], [ %25, %18 ]
  %28 = zext i1 %27 to i32
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
