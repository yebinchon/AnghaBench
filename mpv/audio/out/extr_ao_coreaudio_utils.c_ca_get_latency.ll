; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_coreaudio_utils.c_ca_get_latency.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_coreaudio_utils.c_ca_get_latency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64 }

@ca_get_latency.timebase = internal global %struct.TYPE_5__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ca_get_latency(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ca_get_latency.timebase, i32 0, i32 0), align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @mach_timebase_info(%struct.TYPE_5__* @ca_get_latency.timebase)
  br label %10

10:                                               ; preds = %8, %1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %4, align 8
  %14 = call i64 (...) @mach_absolute_time()
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  store i64 0, i64* %2, align 8
  br label %30

19:                                               ; preds = %10
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = sub nsw i64 %20, %21
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ca_get_latency.timebase, i32 0, i32 1), align 8
  %24 = mul nsw i64 %22, %23
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ca_get_latency.timebase, i32 0, i32 0), align 8
  %26 = sdiv i64 %24, %25
  %27 = sitofp i64 %26 to double
  %28 = fdiv double %27, 1.000000e+03
  %29 = fptosi double %28 to i64
  store i64 %29, i64* %2, align 8
  br label %30

30:                                               ; preds = %19, %18
  %31 = load i64, i64* %2, align 8
  ret i64 %31
}

declare dso_local i32 @mach_timebase_info(%struct.TYPE_5__*) #1

declare dso_local i64 @mach_absolute_time(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
