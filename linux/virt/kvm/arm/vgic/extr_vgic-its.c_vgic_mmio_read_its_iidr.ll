; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_mmio_read_its_iidr.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_mmio_read_its_iidr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.vgic_its = type { i64 }

@GITS_IIDR_REV_SHIFT = common dso_local global i64 0, align 8
@GITS_IIDR_REV_MASK = common dso_local global i64 0, align 8
@PRODUCT_ID_KVM = common dso_local global i64 0, align 8
@GITS_IIDR_PRODUCTID_SHIFT = common dso_local global i64 0, align 8
@IMPLEMENTER_ARM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kvm*, %struct.vgic_its*, i32, i32)* @vgic_mmio_read_its_iidr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vgic_mmio_read_its_iidr(%struct.kvm* %0, %struct.vgic_its* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca %struct.vgic_its*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %5, align 8
  store %struct.vgic_its* %1, %struct.vgic_its** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.vgic_its*, %struct.vgic_its** %6, align 8
  %11 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @GITS_IIDR_REV_SHIFT, align 8
  %14 = shl i64 %12, %13
  %15 = load i64, i64* @GITS_IIDR_REV_MASK, align 8
  %16 = and i64 %14, %15
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* @PRODUCT_ID_KVM, align 8
  %18 = load i64, i64* @GITS_IIDR_PRODUCTID_SHIFT, align 8
  %19 = shl i64 %17, %18
  %20 = load i64, i64* @IMPLEMENTER_ARM, align 8
  %21 = or i64 %19, %20
  %22 = load i64, i64* %9, align 8
  %23 = or i64 %22, %21
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  ret i64 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
