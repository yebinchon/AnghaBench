; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_raw_skew.c_get_monotonic_and_raw.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_raw_skew.c_get_monotonic_and_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }

@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC_RAW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_monotonic_and_raw(%struct.timespec* %0, %struct.timespec* %1) #0 {
  %3 = alloca %struct.timespec*, align 8
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca %struct.timespec, align 4
  %6 = alloca %struct.timespec, align 4
  %7 = alloca %struct.timespec, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.timespec, align 4
  store %struct.timespec* %0, %struct.timespec** %3, align 8
  store %struct.timespec* %1, %struct.timespec** %4, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %55, %2
  %14 = load i32, i32* %10, align 4
  %15 = icmp slt i32 %14, 3
  br i1 %15, label %16, label %58

16:                                               ; preds = %13
  %17 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %18 = call i32 @clock_gettime(i32 %17, %struct.timespec* %5)
  %19 = load i32, i32* @CLOCK_MONOTONIC_RAW, align 4
  %20 = call i32 @clock_gettime(i32 %19, %struct.timespec* %6)
  %21 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %22 = call i32 @clock_gettime(i32 %21, %struct.timespec* %7)
  %23 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @diff_timespec(i32 %24, i32 %26)
  store i64 %27, i64* %11, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %16
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %30, %16
  %35 = load i64, i64* %11, align 8
  store i64 %35, i64* %8, align 8
  %36 = load %struct.timespec*, %struct.timespec** %4, align 8
  %37 = bitcast %struct.timespec* %36 to i8*
  %38 = bitcast %struct.timespec* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 4, i1 false)
  %39 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ts_to_nsec(i32 %40)
  %42 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ts_to_nsec(i32 %43)
  %45 = add nsw i32 %41, %44
  %46 = sdiv i32 %45, 2
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %9, align 8
  %48 = load %struct.timespec*, %struct.timespec** %3, align 8
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @nsec_to_ts(i64 %49)
  %51 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = bitcast %struct.timespec* %48 to i8*
  %53 = bitcast %struct.timespec* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 4, i1 false)
  br label %54

54:                                               ; preds = %34, %30
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  br label %13

58:                                               ; preds = %13
  ret void
}

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i64 @diff_timespec(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ts_to_nsec(i32) #1

declare dso_local i32 @nsec_to_ts(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
