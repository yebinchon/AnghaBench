; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_restore_collection_table.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_restore_collection_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vgic_its = type { i32 }
%struct.vgic_its_abi = type { i32 }

@GITS_BASER_VALID = common dso_local global i32 0, align 4
@SZ_64K = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vgic_its*)* @vgic_its_restore_collection_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgic_its_restore_collection_table(%struct.vgic_its* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vgic_its*, align 8
  %4 = alloca %struct.vgic_its_abi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vgic_its* %0, %struct.vgic_its** %3, align 8
  %11 = load %struct.vgic_its*, %struct.vgic_its** %3, align 8
  %12 = call %struct.vgic_its_abi* @vgic_its_get_abi(%struct.vgic_its* %11)
  store %struct.vgic_its_abi* %12, %struct.vgic_its_abi** %4, align 8
  %13 = load %struct.vgic_its*, %struct.vgic_its** %3, align 8
  %14 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.vgic_its_abi*, %struct.vgic_its_abi** %4, align 8
  %17 = getelementptr inbounds %struct.vgic_its_abi, %struct.vgic_its_abi* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  store i64 0, i64* %8, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @GITS_BASER_VALID, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %57

24:                                               ; preds = %1
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @GITS_BASER_ADDR_48_to_52(i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @GITS_BASER_NR_PAGES(i32 %27)
  %29 = load i64, i64* @SZ_64K, align 8
  %30 = mul i64 %28, %29
  store i64 %30, i64* %7, align 8
  br label %31

31:                                               ; preds = %43, %24
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %7, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %31
  %36 = load %struct.vgic_its*, %struct.vgic_its** %3, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @vgic_its_restore_cte(%struct.vgic_its* %36, i32 %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp sle i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %51

43:                                               ; preds = %35
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %8, align 8
  %50 = add i64 %49, %48
  store i64 %50, i64* %8, align 8
  br label %31

51:                                               ; preds = %42, %31
  %52 = load i32, i32* %10, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %57

55:                                               ; preds = %51
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %54, %23
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.vgic_its_abi* @vgic_its_get_abi(%struct.vgic_its*) #1

declare dso_local i32 @GITS_BASER_ADDR_48_to_52(i32) #1

declare dso_local i64 @GITS_BASER_NR_PAGES(i32) #1

declare dso_local i32 @vgic_its_restore_cte(%struct.vgic_its*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
