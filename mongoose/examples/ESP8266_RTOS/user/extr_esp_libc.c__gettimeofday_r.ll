; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_esp_libc.c__gettimeofday_r.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_esp_libc.c__gettimeofday_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._reent = type { i32 }
%struct.timeval = type { i64, i64 }

@_gettimeofday_r.prev_time = internal global i64 0, align 8
@_gettimeofday_r.num_overflows = internal global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_gettimeofday_r(%struct._reent* %0, %struct.timeval* %1, i8* %2) #0 {
  %4 = alloca %struct._reent*, align 8
  %5 = alloca %struct.timeval*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct._reent* %0, %struct._reent** %4, align 8
  store %struct.timeval* %1, %struct.timeval** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = call i64 (...) @system_get_time()
  store i64 %9, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  store i64 %10, i64* %8, align 8
  %11 = load i64, i64* @_gettimeofday_r.prev_time, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @_gettimeofday_r.prev_time, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i64, i64* @_gettimeofday_r.num_overflows, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* @_gettimeofday_r.num_overflows, align 8
  br label %20

20:                                               ; preds = %17, %13, %3
  %21 = load i64, i64* @_gettimeofday_r.num_overflows, align 8
  %22 = mul i64 %21, 4294967296
  %23 = load i64, i64* %8, align 8
  %24 = add i64 %23, %22
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %8, align 8
  %26 = udiv i64 %25, 1000000
  %27 = load %struct.timeval*, %struct.timeval** %5, align 8
  %28 = getelementptr inbounds %struct.timeval, %struct.timeval* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load i64, i64* %8, align 8
  %30 = urem i64 %29, 1000000
  %31 = load %struct.timeval*, %struct.timeval** %5, align 8
  %32 = getelementptr inbounds %struct.timeval, %struct.timeval* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load i64, i64* %7, align 8
  store i64 %33, i64* @_gettimeofday_r.prev_time, align 8
  ret i32 0
}

declare dso_local i64 @system_get_time(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
