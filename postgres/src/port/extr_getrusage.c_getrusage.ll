; ModuleID = '/home/carl/AnghaBench/postgres/src/port/extr_getrusage.c_getrusage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/port/extr_getrusage.c_getrusage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rusage = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.tms = type { i32, i32, i32, i32 }

@CLK_TCK = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getrusage(i32 %0, %struct.rusage* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.rusage*, align 8
  %6 = alloca %struct.tms, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.rusage* %1, %struct.rusage** %5, align 8
  %10 = load i32, i32* @CLK_TCK, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.rusage*, %struct.rusage** %5, align 8
  %12 = icmp eq %struct.rusage* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @EFAULT, align 4
  store i32 %14, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %68

15:                                               ; preds = %2
  %16 = call i64 @times(%struct.tms* %6)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %68

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  switch i32 %20, label %31 [
    i32 128, label %21
    i32 129, label %26
  ]

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.tms, %struct.tms* %6, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = getelementptr inbounds %struct.tms, %struct.tms* %6, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  br label %33

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.tms, %struct.tms* %6, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  %29 = getelementptr inbounds %struct.tms, %struct.tms* %6, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  br label %33

31:                                               ; preds = %19
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %68

33:                                               ; preds = %26, %21
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %7, align 4
  %36 = sdiv i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = load %struct.rusage*, %struct.rusage** %5, align 8
  %39 = getelementptr inbounds %struct.rusage, %struct.rusage* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i64 %37, i64* %40, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = srem i32 %41, %42
  %44 = mul nsw i32 %43, 1000000
  %45 = load i32, i32* %7, align 4
  %46 = sdiv i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = load %struct.rusage*, %struct.rusage** %5, align 8
  %49 = getelementptr inbounds %struct.rusage, %struct.rusage* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store i64 %47, i64* %50, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %7, align 4
  %53 = sdiv i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = load %struct.rusage*, %struct.rusage** %5, align 8
  %56 = getelementptr inbounds %struct.rusage, %struct.rusage* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i64 %54, i64* %57, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %7, align 4
  %60 = srem i32 %58, %59
  %61 = mul nsw i32 %60, 1000000
  %62 = load i32, i32* %7, align 4
  %63 = sdiv i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = load %struct.rusage*, %struct.rusage** %5, align 8
  %66 = getelementptr inbounds %struct.rusage, %struct.rusage* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  store i64 %64, i64* %67, align 8
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %33, %31, %18, %13
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i64 @times(%struct.tms*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
