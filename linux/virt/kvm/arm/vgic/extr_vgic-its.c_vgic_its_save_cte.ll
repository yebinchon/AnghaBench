; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_save_cte.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_save_cte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vgic_its = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.its_collection = type { i64, i64 }

@KVM_ITS_CTE_VALID_SHIFT = common dso_local global i64 0, align 8
@KVM_ITS_CTE_RDBASE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vgic_its*, %struct.its_collection*, i32, i32)* @vgic_its_save_cte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgic_its_save_cte(%struct.vgic_its* %0, %struct.its_collection* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.vgic_its*, align 8
  %6 = alloca %struct.its_collection*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.vgic_its* %0, %struct.vgic_its** %5, align 8
  store %struct.its_collection* %1, %struct.its_collection** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i64, i64* @KVM_ITS_CTE_VALID_SHIFT, align 8
  %11 = shl i64 1, %10
  %12 = load %struct.its_collection*, %struct.its_collection** %6, align 8
  %13 = getelementptr inbounds %struct.its_collection, %struct.its_collection* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @KVM_ITS_CTE_RDBASE_SHIFT, align 8
  %16 = shl i64 %14, %15
  %17 = or i64 %11, %16
  %18 = load %struct.its_collection*, %struct.its_collection** %6, align 8
  %19 = getelementptr inbounds %struct.its_collection, %struct.its_collection* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = or i64 %17, %20
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i64 @cpu_to_le64(i64 %22)
  store i64 %23, i64* %9, align 8
  %24 = load %struct.vgic_its*, %struct.vgic_its** %5, align 8
  %25 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @kvm_write_guest_lock(i32 %28, i32 %29, i64* %9, i32 %30)
  ret i32 %31
}

declare dso_local i64 @cpu_to_le64(i64) #1

declare dso_local i32 @kvm_write_guest_lock(i32, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
