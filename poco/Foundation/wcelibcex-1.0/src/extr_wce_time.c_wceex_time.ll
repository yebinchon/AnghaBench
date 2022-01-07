; ModuleID = '/home/carl/AnghaBench/poco/Foundation/wcelibcex-1.0/src/extr_wce_time.c_wceex_time.c'
source_filename = "/home/carl/AnghaBench/poco/Foundation/wcelibcex-1.0/src/extr_wce_time.c_wceex_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i64, i32, i64, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i64, i64 }

@TM_YEAR_BASE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wceex_time(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tm, align 8
  %5 = alloca %struct.TYPE_3__, align 8
  store i32* %0, i32** %2, align 8
  %6 = call i32 @GetSystemTime(%struct.TYPE_3__* %5)
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 6
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @TM_YEAR_BASE, align 8
  %10 = sub nsw i64 %8, %9
  %11 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 8
  store i64 %10, i64* %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 5
  %13 = load i64, i64* %12, align 8
  %14 = sub nsw i64 %13, 1
  %15 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 7
  store i64 %14, i64* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 6
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 5
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 4
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 3
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 1
  store i32 %30, i32* %31, align 8
  %32 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = call i32 @wceex_gmmktime(%struct.tm* %4)
  store i32 %33, i32* %3, align 4
  %34 = load i32*, i32** %2, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %1
  %37 = load i32, i32* %3, align 4
  %38 = load i32*, i32** %2, align 8
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %1
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @GetSystemTime(%struct.TYPE_3__*) #1

declare dso_local i32 @wceex_gmmktime(%struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
