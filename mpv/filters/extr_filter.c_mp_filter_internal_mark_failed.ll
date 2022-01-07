; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_filter.c_mp_filter_internal_mark_failed.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_filter.c_mp_filter_internal_mark_failed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.mp_filter*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_filter_internal_mark_failed(%struct.mp_filter* %0) #0 {
  %2 = alloca %struct.mp_filter*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %2, align 8
  br label %3

3:                                                ; preds = %24, %1
  %4 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %5 = icmp ne %struct.mp_filter* %4, null
  br i1 %5, label %6, label %30

6:                                                ; preds = %3
  %7 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %8 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %12 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %6
  %18 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %19 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @add_pending(i64 %22)
  br label %30

24:                                               ; preds = %6
  %25 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %26 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load %struct.mp_filter*, %struct.mp_filter** %28, align 8
  store %struct.mp_filter* %29, %struct.mp_filter** %2, align 8
  br label %3

30:                                               ; preds = %17, %3
  ret void
}

declare dso_local i32 @add_pending(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
