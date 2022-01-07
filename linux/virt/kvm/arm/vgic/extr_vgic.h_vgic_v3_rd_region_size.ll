; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic.h_vgic_v3_rd_region_size.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic.h_vgic_v3_rd_region_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.vgic_redist_region = type { i64 }

@KVM_VGIC_V3_REDIST_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kvm*, %struct.vgic_redist_region*)* @vgic_v3_rd_region_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vgic_v3_rd_region_size(%struct.kvm* %0, %struct.vgic_redist_region* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca %struct.vgic_redist_region*, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store %struct.vgic_redist_region* %1, %struct.vgic_redist_region** %5, align 8
  %6 = load %struct.vgic_redist_region*, %struct.vgic_redist_region** %5, align 8
  %7 = getelementptr inbounds %struct.vgic_redist_region, %struct.vgic_redist_region* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load %struct.kvm*, %struct.kvm** %4, align 8
  %12 = getelementptr inbounds %struct.kvm, %struct.kvm* %11, i32 0, i32 0
  %13 = call i64 @atomic_read(i32* %12)
  %14 = load i64, i64* @KVM_VGIC_V3_REDIST_SIZE, align 8
  %15 = mul i64 %13, %14
  store i64 %15, i64* %3, align 8
  br label %22

16:                                               ; preds = %2
  %17 = load %struct.vgic_redist_region*, %struct.vgic_redist_region** %5, align 8
  %18 = getelementptr inbounds %struct.vgic_redist_region, %struct.vgic_redist_region* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @KVM_VGIC_V3_REDIST_SIZE, align 8
  %21 = mul i64 %19, %20
  store i64 %21, i64* %3, align 8
  br label %22

22:                                               ; preds = %16, %10
  %23 = load i64, i64* %3, align 8
  ret i64 %23
}

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
