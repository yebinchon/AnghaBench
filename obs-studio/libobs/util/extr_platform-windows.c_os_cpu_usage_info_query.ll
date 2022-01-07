; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform-windows.c_os_cpu_usage_info_query.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform-windows.c_os_cpu_usage_info_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%union.time_data = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @os_cpu_usage_info_query(%struct.TYPE_9__* %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %union.time_data, align 8
  %5 = alloca %union.time_data, align 8
  %6 = alloca %union.time_data, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = icmp ne %struct.TYPE_9__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store double 0.000000e+00, double* %2, align 8
  br label %68

12:                                               ; preds = %1
  %13 = bitcast %union.time_data* %4 to i32*
  %14 = call i32 @GetSystemTimeAsFileTime(i32* %13)
  %15 = call i32 (...) @GetCurrentProcess()
  %16 = bitcast %union.time_data* %5 to i32*
  %17 = bitcast %union.time_data* %6 to i32*
  %18 = call i32 @GetProcessTimes(i32 %15, i32* %7, i32* %7, i32* %16, i32* %17)
  %19 = bitcast %union.time_data* %5 to i64*
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %20, %24
  %26 = bitcast %union.time_data* %6 to i64*
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %27, %31
  %33 = add nsw i64 %25, %32
  %34 = sitofp i64 %33 to double
  store double %34, double* %8, align 8
  %35 = bitcast %union.time_data* %4 to i64*
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %36, %40
  %42 = sitofp i64 %41 to double
  %43 = load double, double* %8, align 8
  %44 = fdiv double %43, %42
  store double %44, double* %8, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = sitofp i64 %47 to double
  %49 = load double, double* %8, align 8
  %50 = fdiv double %49, %48
  store double %50, double* %8, align 8
  %51 = bitcast %union.time_data* %4 to i64*
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i64 %52, i64* %55, align 8
  %56 = bitcast %union.time_data* %5 to i64*
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  store i64 %57, i64* %60, align 8
  %61 = bitcast %union.time_data* %6 to i64*
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  store i64 %62, i64* %65, align 8
  %66 = load double, double* %8, align 8
  %67 = fmul double %66, 1.000000e+02
  store double %67, double* %2, align 8
  br label %68

68:                                               ; preds = %12, %11
  %69 = load double, double* %2, align 8
  ret double %69
}

declare dso_local i32 @GetSystemTimeAsFileTime(i32*) #1

declare dso_local i32 @GetProcessTimes(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @GetCurrentProcess(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
