; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/clocks/extr_clocks.c_sleep_usec.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/clocks/extr_clocks.c_sleep_usec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@D_SYSTEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"nanosleep() interrupted (while sleeping for %llu microseconds).\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Cannot nanosleep() for %llu microseconds.\00", align 1
@EINVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sleep_usec(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.timespec, align 4
  %4 = alloca %struct.timespec, align 4
  store i32 %0, i32* %2, align 4
  %5 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  %6 = load i32, i32* %2, align 4
  %7 = srem i32 %6, 1000000
  %8 = mul nsw i32 %7, 1000
  store i32 %8, i32* %5, align 4
  %9 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1
  %10 = load i32, i32* %2, align 4
  %11 = sdiv i32 %10, 1000000
  store i32 %11, i32* %9, align 4
  br label %12

12:                                               ; preds = %35, %1
  %13 = call i32 @nanosleep(%struct.timespec* %4, %struct.timespec* %3)
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %36

15:                                               ; preds = %12
  %16 = load i64, i64* @errno, align 8
  %17 = load i64, i64* @EINTR, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @likely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %15
  %23 = load i32, i32* @D_SYSTEM, align 4
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @debug(i32 %23, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  br label %35

32:                                               ; preds = %15
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %36

35:                                               ; preds = %22
  br label %12

36:                                               ; preds = %32, %12
  ret i32 0
}

declare dso_local i32 @nanosleep(%struct.timespec*, %struct.timespec*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @debug(i32, i8*, i32) #1

declare dso_local i32 @error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
