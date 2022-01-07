; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_restore_itt.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_restore_itt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vgic_its = type { i32 }
%struct.its_device = type { i32, i32 }
%struct.vgic_its_abi = type { i32 }

@vgic_its_restore_ite = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vgic_its*, %struct.its_device*)* @vgic_its_restore_itt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgic_its_restore_itt(%struct.vgic_its* %0, %struct.its_device* %1) #0 {
  %3 = alloca %struct.vgic_its*, align 8
  %4 = alloca %struct.its_device*, align 8
  %5 = alloca %struct.vgic_its_abi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.vgic_its* %0, %struct.vgic_its** %3, align 8
  store %struct.its_device* %1, %struct.its_device** %4, align 8
  %10 = load %struct.vgic_its*, %struct.vgic_its** %3, align 8
  %11 = call %struct.vgic_its_abi* @vgic_its_get_abi(%struct.vgic_its* %10)
  store %struct.vgic_its_abi* %11, %struct.vgic_its_abi** %5, align 8
  %12 = load %struct.its_device*, %struct.its_device** %4, align 8
  %13 = getelementptr inbounds %struct.its_device, %struct.its_device* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.vgic_its_abi*, %struct.vgic_its_abi** %5, align 8
  %16 = getelementptr inbounds %struct.vgic_its_abi, %struct.vgic_its_abi* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.its_device*, %struct.its_device** %4, align 8
  %19 = getelementptr inbounds %struct.its_device, %struct.its_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @BIT_ULL(i32 %20)
  %22 = load i32, i32* %8, align 4
  %23 = mul nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %9, align 8
  %25 = load %struct.vgic_its*, %struct.vgic_its** %3, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i64, i64* %9, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @vgic_its_restore_ite, align 4
  %30 = load %struct.its_device*, %struct.its_device** %4, align 8
  %31 = call i32 @scan_its_table(%struct.vgic_its* %25, i32 %26, i64 %27, i32 %28, i32 0, i32 %29, %struct.its_device* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %34, %2
  %36 = load i32, i32* %7, align 4
  ret i32 %36
}

declare dso_local %struct.vgic_its_abi* @vgic_its_get_abi(%struct.vgic_its*) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @scan_its_table(%struct.vgic_its*, i32, i64, i32, i32, i32, %struct.its_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
