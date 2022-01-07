; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_save_dte.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_save_dte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vgic_its = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.kvm* }
%struct.kvm = type { i32 }
%struct.its_device = type { i32, i32 }

@KVM_ITS_DTE_VALID_SHIFT = common dso_local global i64 0, align 8
@KVM_ITS_DTE_NEXT_SHIFT = common dso_local global i64 0, align 8
@KVM_ITS_DTE_ITTADDR_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vgic_its*, %struct.its_device*, i32, i32)* @vgic_its_save_dte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgic_its_save_dte(%struct.vgic_its* %0, %struct.its_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.vgic_its*, align 8
  %6 = alloca %struct.its_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.kvm*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.vgic_its* %0, %struct.vgic_its** %5, align 8
  store %struct.its_device* %1, %struct.its_device** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.vgic_its*, %struct.vgic_its** %5, align 8
  %14 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.kvm*, %struct.kvm** %16, align 8
  store %struct.kvm* %17, %struct.kvm** %9, align 8
  %18 = load %struct.its_device*, %struct.its_device** %6, align 8
  %19 = getelementptr inbounds %struct.its_device, %struct.its_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %20, 8
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %11, align 8
  %23 = load %struct.vgic_its*, %struct.vgic_its** %5, align 8
  %24 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %23, i32 0, i32 0
  %25 = load %struct.its_device*, %struct.its_device** %6, align 8
  %26 = call i64 @compute_next_devid_offset(i32* %24, %struct.its_device* %25)
  store i64 %26, i64* %12, align 8
  %27 = load i64, i64* @KVM_ITS_DTE_VALID_SHIFT, align 8
  %28 = shl i64 1, %27
  %29 = load i64, i64* %12, align 8
  %30 = load i64, i64* @KVM_ITS_DTE_NEXT_SHIFT, align 8
  %31 = shl i64 %29, %30
  %32 = or i64 %28, %31
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* @KVM_ITS_DTE_ITTADDR_SHIFT, align 8
  %35 = shl i64 %33, %34
  %36 = or i64 %32, %35
  %37 = load %struct.its_device*, %struct.its_device** %6, align 8
  %38 = getelementptr inbounds %struct.its_device, %struct.its_device* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = or i64 %36, %41
  store i64 %42, i64* %10, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i64 @cpu_to_le64(i64 %43)
  store i64 %44, i64* %10, align 8
  %45 = load %struct.kvm*, %struct.kvm** %9, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @kvm_write_guest_lock(%struct.kvm* %45, i32 %46, i64* %10, i32 %47)
  ret i32 %48
}

declare dso_local i64 @compute_next_devid_offset(i32*, %struct.its_device*) #1

declare dso_local i64 @cpu_to_le64(i64) #1

declare dso_local i32 @kvm_write_guest_lock(%struct.kvm*, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
