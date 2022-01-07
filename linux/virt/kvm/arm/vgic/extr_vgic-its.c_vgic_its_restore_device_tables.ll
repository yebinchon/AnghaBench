; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_restore_device_tables.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_restore_device_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vgic_its = type { i32 }
%struct.vgic_its_abi = type { i32 }

@SZ_64K = common dso_local global i32 0, align 4
@GITS_BASER_VALID = common dso_local global i32 0, align 4
@GITS_BASER_INDIRECT = common dso_local global i32 0, align 4
@GITS_LVL1_ENTRY_SIZE = common dso_local global i32 0, align 4
@handle_l1_dte = common dso_local global i32 0, align 4
@vgic_its_restore_dte = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vgic_its*)* @vgic_its_restore_device_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgic_its_restore_device_tables(%struct.vgic_its* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vgic_its*, align 8
  %4 = alloca %struct.vgic_its_abi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vgic_its* %0, %struct.vgic_its** %3, align 8
  %10 = load %struct.vgic_its*, %struct.vgic_its** %3, align 8
  %11 = call %struct.vgic_its_abi* @vgic_its_get_abi(%struct.vgic_its* %10)
  store %struct.vgic_its_abi* %11, %struct.vgic_its_abi** %4, align 8
  %12 = load %struct.vgic_its*, %struct.vgic_its** %3, align 8
  %13 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @GITS_BASER_NR_PAGES(i32 %15)
  %17 = load i32, i32* @SZ_64K, align 4
  %18 = mul nsw i32 %16, %17
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @GITS_BASER_VALID, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %55

24:                                               ; preds = %1
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @GITS_BASER_ADDR_48_to_52(i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @GITS_BASER_INDIRECT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load i32, i32* @GITS_LVL1_ENTRY_SIZE, align 4
  store i32 %32, i32* %6, align 4
  %33 = load %struct.vgic_its*, %struct.vgic_its** %3, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @handle_l1_dte, align 4
  %38 = call i32 @scan_its_table(%struct.vgic_its* %33, i32 %34, i32 %35, i32 %36, i32 0, i32 %37, i32* null)
  store i32 %38, i32* %7, align 4
  br label %49

39:                                               ; preds = %24
  %40 = load %struct.vgic_its_abi*, %struct.vgic_its_abi** %4, align 8
  %41 = getelementptr inbounds %struct.vgic_its_abi, %struct.vgic_its_abi* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %6, align 4
  %43 = load %struct.vgic_its*, %struct.vgic_its** %3, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @vgic_its_restore_dte, align 4
  %48 = call i32 @scan_its_table(%struct.vgic_its* %43, i32 %44, i32 %45, i32 %46, i32 0, i32 %47, i32* null)
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %39, %31
  %50 = load i32, i32* %7, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %52, %49
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %23
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.vgic_its_abi* @vgic_its_get_abi(%struct.vgic_its*) #1

declare dso_local i32 @GITS_BASER_NR_PAGES(i32) #1

declare dso_local i32 @GITS_BASER_ADDR_48_to_52(i32) #1

declare dso_local i32 @scan_its_table(%struct.vgic_its*, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
