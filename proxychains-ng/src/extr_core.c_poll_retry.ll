; ModuleID = '/home/carl/AnghaBench/proxychains-ng/src/extr_core.c_poll_retry.c'
source_filename = "/home/carl/AnghaBench/proxychains-ng/src/extr_core.c_poll_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32 }
%struct.timeval = type { i32, i32 }

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pollfd*, i32, i32)* @poll_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @poll_retry(%struct.pollfd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pollfd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.timeval, align 4
  %11 = alloca %struct.timeval, align 4
  store %struct.pollfd* %0, %struct.pollfd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = call i32 @gettimeofday(%struct.timeval* %10, i32* null)
  br label %14

14:                                               ; preds = %46, %3
  %15 = load %struct.pollfd*, %struct.pollfd** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @poll(%struct.pollfd* %15, i32 %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = call i32 @gettimeofday(%struct.timeval* %11, i32* null)
  %20 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %21, %23
  %25 = mul nsw i32 %24, 1000
  %26 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %27, %29
  %31 = sdiv i32 %30, 1000
  %32 = add nsw i32 %25, %31
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %9, align 4
  %35 = sub nsw i32 %33, %34
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %14
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load i64, i64* @errno, align 8
  %41 = load i64, i64* @EINTR, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* %8, align 4
  %45 = icmp sgt i32 %44, 0
  br label %46

46:                                               ; preds = %43, %39, %36
  %47 = phi i1 [ false, %39 ], [ false, %36 ], [ %45, %43 ]
  br i1 %47, label %14, label %48

48:                                               ; preds = %46
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
