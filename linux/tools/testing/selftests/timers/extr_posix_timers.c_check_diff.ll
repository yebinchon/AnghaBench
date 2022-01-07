; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_posix_timers.c_check_diff.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_posix_timers.c_check_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

@USECS_PER_SEC = common dso_local global i64 0, align 8
@DELAY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Diff too high: %lld..\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i64)* @check_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_diff(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.timeval, align 8
  %7 = alloca %struct.timeval, align 8
  %8 = alloca i64, align 8
  %9 = bitcast %struct.timeval* %6 to { i64, i64 }*
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  store i64 %0, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  store i64 %1, i64* %11, align 8
  %12 = bitcast %struct.timeval* %7 to { i64, i64 }*
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 0
  store i64 %2, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 1
  store i64 %3, i64* %14, align 8
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %16, %18
  store i64 %19, i64* %8, align 8
  %20 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %21, %23
  %25 = load i64, i64* @USECS_PER_SEC, align 8
  %26 = mul nsw i64 %24, %25
  %27 = load i64, i64* %8, align 8
  %28 = add nsw i64 %27, %26
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @DELAY, align 8
  %31 = load i64, i64* @USECS_PER_SEC, align 8
  %32 = mul nsw i64 %30, %31
  %33 = sub nsw i64 %29, %32
  %34 = call i64 @abs(i64 %33)
  %35 = load i64, i64* @USECS_PER_SEC, align 8
  %36 = sdiv i64 %35, 2
  %37 = icmp sgt i64 %34, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %4
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %39)
  store i32 -1, i32* %5, align 4
  br label %42

41:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %38
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i64 @abs(i64) #1

declare dso_local i32 @printf(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
