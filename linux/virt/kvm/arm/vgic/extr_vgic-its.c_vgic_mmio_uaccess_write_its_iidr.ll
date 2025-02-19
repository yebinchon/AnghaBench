; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_mmio_uaccess_write_its_iidr.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_mmio_uaccess_write_its_iidr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.vgic_its = type { i32 }

@NR_ITS_ABIS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, %struct.vgic_its*, i32, i32, i64)* @vgic_mmio_uaccess_write_its_iidr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgic_mmio_uaccess_write_its_iidr(%struct.kvm* %0, %struct.vgic_its* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm*, align 8
  %8 = alloca %struct.vgic_its*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %7, align 8
  store %struct.vgic_its* %1, %struct.vgic_its** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %13 = load i64, i64* %11, align 8
  %14 = call i64 @GITS_IIDR_REV(i64 %13)
  store i64 %14, i64* %12, align 8
  %15 = load i64, i64* %12, align 8
  %16 = load i64, i64* @NR_ITS_ABIS, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %25

21:                                               ; preds = %5
  %22 = load %struct.vgic_its*, %struct.vgic_its** %8, align 8
  %23 = load i64, i64* %12, align 8
  %24 = call i32 @vgic_its_set_abi(%struct.vgic_its* %22, i64 %23)
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %21, %18
  %26 = load i32, i32* %6, align 4
  ret i32 %26
}

declare dso_local i64 @GITS_IIDR_REV(i64) #1

declare dso_local i32 @vgic_its_set_abi(%struct.vgic_its*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
