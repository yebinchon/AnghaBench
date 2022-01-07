; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_adjtick.c_get_monotonic_and_raw.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_adjtick.c_get_monotonic_and_raw.c"
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
  %13 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %14 = load %struct.timespec*, %struct.timespec** %3, align 8
  %15 = call i32 @clock_gettime(i32 %13, %struct.timespec* %14)
  %16 = load i32, i32* @CLOCK_MONOTONIC_RAW, align 4
  %17 = load %struct.timespec*, %struct.timespec** %4, align 8
  %18 = call i32 @clock_gettime(i32 %16, %struct.timespec* %17)
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %61, %2
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 3
  br i1 %21, label %22, label %64

22:                                               ; preds = %19
  %23 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %24 = call i32 @clock_gettime(i32 %23, %struct.timespec* %5)
  %25 = load i32, i32* @CLOCK_MONOTONIC_RAW, align 4
  %26 = call i32 @clock_gettime(i32 %25, %struct.timespec* %6)
  %27 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %28 = call i32 @clock_gettime(i32 %27, %struct.timespec* %7)
  %29 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @diff_timespec(i32 %30, i32 %32)
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %22
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %36, %22
  %41 = load i64, i64* %11, align 8
  store i64 %41, i64* %8, align 8
  %42 = load %struct.timespec*, %struct.timespec** %4, align 8
  %43 = bitcast %struct.timespec* %42 to i8*
  %44 = bitcast %struct.timespec* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 4, i1 false)
  %45 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ts_to_nsec(i32 %46)
  %48 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ts_to_nsec(i32 %49)
  %51 = add nsw i32 %47, %50
  %52 = sdiv i32 %51, 2
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %9, align 8
  %54 = load %struct.timespec*, %struct.timespec** %3, align 8
  %55 = load i64, i64* %9, align 8
  %56 = call i32 @nsec_to_ts(i64 %55)
  %57 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 0
  store i32 %56, i32* %57, align 4
  %58 = bitcast %struct.timespec* %54 to i8*
  %59 = bitcast %struct.timespec* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %58, i8* align 4 %59, i64 4, i1 false)
  br label %60

60:                                               ; preds = %40, %36
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %10, align 4
  br label %19

64:                                               ; preds = %19
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
