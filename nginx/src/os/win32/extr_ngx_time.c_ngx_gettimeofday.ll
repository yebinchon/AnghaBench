; ModuleID = '/home/carl/AnghaBench/nginx/src/os/win32/extr_ngx_time.c_ngx_gettimeofday.c'
source_filename = "/home/carl/AnghaBench/nginx/src/os/win32/extr_ngx_time.c_ngx_gettimeofday.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.TYPE_3__ = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_gettimeofday(%struct.timeval* %0) #0 {
  %2 = alloca %struct.timeval*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__, align 8
  store %struct.timeval* %0, %struct.timeval** %2, align 8
  %5 = call i32 @GetSystemTimeAsFileTime(%struct.TYPE_3__* %4)
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = shl i32 %8, 32
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = or i32 %9, %11
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = sub nsw i64 %14, 116444736000000000
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = sdiv i32 %17, 10000000
  %19 = sext i32 %18 to i64
  %20 = load %struct.timeval*, %struct.timeval** %2, align 8
  %21 = getelementptr inbounds %struct.timeval, %struct.timeval* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load i32, i32* %3, align 4
  %23 = srem i32 %22, 10000000
  %24 = sdiv i32 %23, 10
  %25 = sext i32 %24 to i64
  %26 = load %struct.timeval*, %struct.timeval** %2, align 8
  %27 = getelementptr inbounds %struct.timeval, %struct.timeval* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  ret void
}

declare dso_local i32 @GetSystemTimeAsFileTime(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
