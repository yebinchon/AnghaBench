; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/clocks/extr_clocks.c_now_timeval.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/clocks/extr_clocks.c_now_timeval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i32 }
%struct.timespec = type { i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"clock_gettime(%d, &timespec) failed.\00", align 1
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@NSEC_PER_USEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.timeval*)* @now_timeval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @now_timeval(i32 %0, %struct.timeval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.timeval*, align 8
  %6 = alloca %struct.timespec, align 4
  store i32 %0, i32* %4, align 4
  store %struct.timeval* %1, %struct.timeval** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @clock_gettime(i32 %7, %struct.timespec* %6)
  %9 = icmp eq i32 %8, -1
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.timeval*, %struct.timeval** %5, align 8
  %17 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 1
  store i32 0, i32* %17, align 8
  %18 = load %struct.timeval*, %struct.timeval** %5, align 8
  %19 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  store i32 -1, i32* %3, align 4
  br label %34

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.timeval*, %struct.timeval** %5, align 8
  %24 = getelementptr inbounds %struct.timeval, %struct.timeval* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @NSEC_PER_SEC, align 4
  %28 = srem i32 %26, %27
  %29 = load i32, i32* @NSEC_PER_USEC, align 4
  %30 = sdiv i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = load %struct.timeval*, %struct.timeval** %5, align 8
  %33 = getelementptr inbounds %struct.timeval, %struct.timeval* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %20, %13
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
