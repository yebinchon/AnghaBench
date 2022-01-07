; ModuleID = '/home/carl/AnghaBench/nanomsg/src/utils/extr_stopwatch.c_nn_stopwatch_init.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/utils/extr_stopwatch.c_nn_stopwatch_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_stopwatch = type { i32 }
%struct.timeval = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_stopwatch_init(%struct.nn_stopwatch* %0) #0 {
  %2 = alloca %struct.nn_stopwatch*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.timeval, align 8
  store %struct.nn_stopwatch* %0, %struct.nn_stopwatch** %2, align 8
  %5 = call i32 @gettimeofday(%struct.timeval* %4, i32* null)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp eq i32 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = mul nsw i32 %12, 1000000
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %14, %16
  %18 = trunc i64 %17 to i32
  %19 = load %struct.nn_stopwatch*, %struct.nn_stopwatch** %2, align 8
  %20 = getelementptr inbounds %struct.nn_stopwatch, %struct.nn_stopwatch* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  ret void
}

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
