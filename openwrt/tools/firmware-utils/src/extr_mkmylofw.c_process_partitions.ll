; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkmylofw.c_process_partitions.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkmylofw.c_process_partitions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mylo_partition }
%struct.mylo_partition = type { i64, i64 }

@fw_num_partitions = common dso_local global i32 0, align 4
@fw_parts = common dso_local global %struct.TYPE_2__* null, align 8
@flash_size = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"invalid partition at 0x%08X\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"partition at 0x%08X is too big\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_partitions() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.mylo_partition*, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %40, %0
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @fw_num_partitions, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %43

8:                                                ; preds = %4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fw_parts, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.mylo_partition* %13, %struct.mylo_partition** %2, align 8
  %14 = load %struct.mylo_partition*, %struct.mylo_partition** %2, align 8
  %15 = getelementptr inbounds %struct.mylo_partition, %struct.mylo_partition* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @flash_size, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %8
  %20 = load %struct.mylo_partition*, %struct.mylo_partition** %2, align 8
  %21 = getelementptr inbounds %struct.mylo_partition, %struct.mylo_partition* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @errmsg(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %22)
  store i32 -1, i32* %1, align 4
  br label %44

24:                                               ; preds = %8
  %25 = load %struct.mylo_partition*, %struct.mylo_partition** %2, align 8
  %26 = getelementptr inbounds %struct.mylo_partition, %struct.mylo_partition* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.mylo_partition*, %struct.mylo_partition** %2, align 8
  %29 = getelementptr inbounds %struct.mylo_partition, %struct.mylo_partition* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = load i64, i64* @flash_size, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %24
  %35 = load %struct.mylo_partition*, %struct.mylo_partition** %2, align 8
  %36 = getelementptr inbounds %struct.mylo_partition, %struct.mylo_partition* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @errmsg(i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  store i32 -1, i32* %1, align 4
  br label %44

39:                                               ; preds = %24
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %4

43:                                               ; preds = %4
  store i32 0, i32* %1, align 4
  br label %44

44:                                               ; preds = %43, %34, %19
  %45 = load i32, i32* %1, align 4
  ret i32 %45
}

declare dso_local i32 @errmsg(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
