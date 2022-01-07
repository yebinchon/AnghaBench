; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar7/files/drivers/mtd/extr_ac49xpart.c_detect_parttype.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar7/files/drivers/mtd/extr_ac49xpart.c_detect_parttype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.mtd_partition = type { i32, i32 }

@AC49X_PARTTYPE_LOADER = common dso_local global i32 0, align 4
@AC49X_PARTTYPE_LINUX = common dso_local global i32 0, align 4
@AC49X_PARTTYPE_ROOTFS = common dso_local global i32 0, align 4
@AC49X_PARTTYPE_BOOTENV = common dso_local global i32 0, align 4
@AC49X_PARTTYPE_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @detect_parttype(%struct.mtd_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtd_partition, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = bitcast %struct.mtd_partition* %4 to i64*
  store i64 %1, i64* %8, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  %9 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %4, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %43

13:                                               ; preds = %2
  %14 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %15 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %4, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @mtd_read(%struct.mtd_info* %14, i32 %16, i32 4, i64* %7, i32* %6)
  %18 = load i64, i64* %7, align 8
  %19 = icmp ne i64 %18, 4
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %43

21:                                               ; preds = %13
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %31 [
    i32 132, label %23
    i32 133, label %25
    i32 128, label %27
    i32 131, label %27
    i32 130, label %27
    i32 134, label %29
  ]

23:                                               ; preds = %21
  %24 = load i32, i32* @AC49X_PARTTYPE_LOADER, align 4
  store i32 %24, i32* %3, align 4
  br label %43

25:                                               ; preds = %21
  %26 = load i32, i32* @AC49X_PARTTYPE_LINUX, align 4
  store i32 %26, i32* %3, align 4
  br label %43

27:                                               ; preds = %21, %21, %21
  %28 = load i32, i32* @AC49X_PARTTYPE_ROOTFS, align 4
  store i32 %28, i32* %3, align 4
  br label %43

29:                                               ; preds = %21
  %30 = load i32, i32* @AC49X_PARTTYPE_BOOTENV, align 4
  store i32 %30, i32* %3, align 4
  br label %43

31:                                               ; preds = %21
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, 255
  switch i32 %33, label %36 [
    i32 129, label %34
  ]

34:                                               ; preds = %31
  %35 = load i32, i32* @AC49X_PARTTYPE_ROOTFS, align 4
  store i32 %35, i32* %3, align 4
  br label %43

36:                                               ; preds = %31
  %37 = load i32, i32* %6, align 4
  %38 = lshr i32 %37, 8
  switch i32 %38, label %41 [
    i32 129, label %39
  ]

39:                                               ; preds = %36
  %40 = load i32, i32* @AC49X_PARTTYPE_ROOTFS, align 4
  store i32 %40, i32* %3, align 4
  br label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @AC49X_PARTTYPE_UNKNOWN, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %39, %34, %29, %27, %25, %23, %20, %12
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @mtd_read(%struct.mtd_info*, i32, i32, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
