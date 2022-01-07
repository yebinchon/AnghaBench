; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_utils.c_timer_pool_start.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_utils.c_timer_pool_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_pool = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timer_pool_start(%struct.timer_pool* %0) #0 {
  %2 = alloca %struct.timer_pool*, align 8
  store %struct.timer_pool* %0, %struct.timer_pool** %2, align 8
  %3 = load %struct.timer_pool*, %struct.timer_pool** %2, align 8
  %4 = icmp ne %struct.timer_pool* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %30

6:                                                ; preds = %1
  %7 = load %struct.timer_pool*, %struct.timer_pool** %2, align 8
  %8 = getelementptr inbounds %struct.timer_pool, %struct.timer_pool* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.timer_pool*, %struct.timer_pool** %2, align 8
  %15 = getelementptr inbounds %struct.timer_pool, %struct.timer_pool* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %19, align 8
  %21 = load %struct.timer_pool*, %struct.timer_pool** %2, align 8
  %22 = getelementptr inbounds %struct.timer_pool, %struct.timer_pool* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load %struct.timer_pool*, %struct.timer_pool** %2, align 8
  %25 = getelementptr inbounds %struct.timer_pool, %struct.timer_pool* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 %20(%struct.TYPE_4__* %23, i32 %26)
  %28 = load %struct.timer_pool*, %struct.timer_pool** %2, align 8
  %29 = getelementptr inbounds %struct.timer_pool, %struct.timer_pool* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  br label %30

30:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
