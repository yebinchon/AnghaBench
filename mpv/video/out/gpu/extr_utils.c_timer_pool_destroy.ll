; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_utils.c_timer_pool_destroy.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_utils.c_timer_pool_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_pool = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timer_pool_destroy(%struct.timer_pool* %0) #0 {
  %2 = alloca %struct.timer_pool*, align 8
  store %struct.timer_pool* %0, %struct.timer_pool** %2, align 8
  %3 = load %struct.timer_pool*, %struct.timer_pool** %2, align 8
  %4 = icmp ne %struct.timer_pool* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %23

6:                                                ; preds = %1
  %7 = load %struct.timer_pool*, %struct.timer_pool** %2, align 8
  %8 = getelementptr inbounds %struct.timer_pool, %struct.timer_pool* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %12, align 8
  %14 = load %struct.timer_pool*, %struct.timer_pool** %2, align 8
  %15 = getelementptr inbounds %struct.timer_pool, %struct.timer_pool* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = load %struct.timer_pool*, %struct.timer_pool** %2, align 8
  %18 = getelementptr inbounds %struct.timer_pool, %struct.timer_pool* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 %13(%struct.TYPE_4__* %16, i32 %19)
  %21 = load %struct.timer_pool*, %struct.timer_pool** %2, align 8
  %22 = call i32 @talloc_free(%struct.timer_pool* %21)
  br label %23

23:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @talloc_free(%struct.timer_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
