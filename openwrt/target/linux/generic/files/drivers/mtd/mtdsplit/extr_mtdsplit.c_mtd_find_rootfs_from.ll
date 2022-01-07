; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/mtd/mtdsplit/extr_mtdsplit.c_mtd_find_rootfs_from.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/mtd/mtdsplit/extr_mtdsplit.c_mtd_find_rootfs_from.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtd_find_rootfs_from(%struct.mtd_info* %0, i64 %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i64, i64* %8, align 8
  store i64 %14, i64* %12, align 8
  br label %15

15:                                               ; preds = %30, %5
  %16 = load i64, i64* %12, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %15
  %20 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %21 = load i64, i64* %12, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = call i32 @mtd_check_rootfs_magic(%struct.mtd_info* %20, i64 %21, i32* %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %30

27:                                               ; preds = %19
  %28 = load i64, i64* %12, align 8
  %29 = load i64*, i64** %10, align 8
  store i64 %28, i64* %29, align 8
  store i32 0, i32* %6, align 4
  br label %37

30:                                               ; preds = %26
  %31 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %32 = load i64, i64* %12, align 8
  %33 = call i64 @mtd_next_eb(%struct.mtd_info* %31, i64 %32)
  store i64 %33, i64* %12, align 8
  br label %15

34:                                               ; preds = %15
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %34, %27
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local i32 @mtd_check_rootfs_magic(%struct.mtd_info*, i64, i32*) #1

declare dso_local i64 @mtd_next_eb(%struct.mtd_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
