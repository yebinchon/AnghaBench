; ModuleID = '/home/carl/AnghaBench/mpv/osdep/extr_timer.c_mp_time_us_to_timespec.c'
source_filename = "/home/carl/AnghaBench/mpv/osdep/extr_timer.c_mp_time_us_to_timespec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @mp_time_us_to_timespec(i64 %0) #0 {
  %2 = alloca %struct.timespec, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %8 = call i32 @get_realtime(%struct.timespec* %2)
  %9 = call i64 (...) @mp_time_us()
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* %4, align 8
  %12 = sub nsw i64 %10, %11
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = sdiv i64 %13, 1000000
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = mul nsw i64 %16, 1000000
  %18 = sub nsw i64 %15, %17
  %19 = mul nsw i64 %18, 1000
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load i64, i64* %6, align 8
  %24 = sub nsw i64 %23, 1
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = add nsw i64 %25, 1000000000
  store i64 %26, i64* %7, align 8
  br label %27

27:                                               ; preds = %22, %1
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %28, %30
  %32 = icmp uge i64 %31, 1000000000
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load i64, i64* %6, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = sub i64 %36, 1000000000
  store i64 %37, i64* %7, align 8
  br label %38

38:                                               ; preds = %33, %27
  %39 = load i64, i64* %6, align 8
  %40 = call i64 @MPMIN(i64 %39, i32 10000000)
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, %41
  store i64 %44, i64* %42, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, %45
  store i64 %48, i64* %46, align 8
  %49 = bitcast %struct.timespec* %2 to { i64, i64 }*
  %50 = load { i64, i64 }, { i64, i64 }* %49, align 8
  ret { i64, i64 } %50
}

declare dso_local i32 @get_realtime(%struct.timespec*) #1

declare dso_local i64 @mp_time_us(...) #1

declare dso_local i64 @MPMIN(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
