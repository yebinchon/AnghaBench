; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_main-throttle.c_throttler_start.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_main-throttle.c_throttler_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Throttler = type { double, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [17 x i8] c"maxrate = %0.2f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @throttler_start(%struct.Throttler* %0, double %1) #0 {
  %3 = alloca %struct.Throttler*, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  store %struct.Throttler* %0, %struct.Throttler** %3, align 8
  store double %1, double* %4, align 8
  %6 = load %struct.Throttler*, %struct.Throttler** %3, align 8
  %7 = call i32 @memset(%struct.Throttler* %6, i32 0, i32 24)
  %8 = load double, double* %4, align 8
  %9 = load %struct.Throttler*, %struct.Throttler** %3, align 8
  %10 = getelementptr inbounds %struct.Throttler, %struct.Throttler* %9, i32 0, i32 0
  store double %8, double* %10, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %31, %2
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = icmp ult i64 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %11
  %16 = call i32 (...) @pixie_gettime()
  %17 = load %struct.Throttler*, %struct.Throttler** %3, align 8
  %18 = getelementptr inbounds %struct.Throttler, %struct.Throttler* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i32 %16, i32* %23, align 8
  %24 = load %struct.Throttler*, %struct.Throttler** %3, align 8
  %25 = getelementptr inbounds %struct.Throttler, %struct.Throttler* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %15
  %32 = load i32, i32* %5, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %11

34:                                               ; preds = %11
  %35 = load %struct.Throttler*, %struct.Throttler** %3, align 8
  %36 = getelementptr inbounds %struct.Throttler, %struct.Throttler* %35, i32 0, i32 1
  store i32 1, i32* %36, align 8
  %37 = load %struct.Throttler*, %struct.Throttler** %3, align 8
  %38 = getelementptr inbounds %struct.Throttler, %struct.Throttler* %37, i32 0, i32 0
  %39 = load double, double* %38, align 8
  %40 = call i32 @LOG(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), double %39)
  ret void
}

declare dso_local i32 @memset(%struct.Throttler*, i32, i32) #1

declare dso_local i32 @pixie_gettime(...) #1

declare dso_local i32 @LOG(i32, i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
