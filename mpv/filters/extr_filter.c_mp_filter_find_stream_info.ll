; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_filter.c_mp_filter_find_stream_info.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_filter.c_mp_filter_find_stream_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_stream_info = type { i32 }
%struct.mp_filter = type { %struct.TYPE_2__*, %struct.mp_stream_info* }
%struct.TYPE_2__ = type { %struct.mp_filter* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mp_stream_info* @mp_filter_find_stream_info(%struct.mp_filter* %0) #0 {
  %2 = alloca %struct.mp_stream_info*, align 8
  %3 = alloca %struct.mp_filter*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %3, align 8
  br label %4

4:                                                ; preds = %16, %1
  %5 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %6 = icmp ne %struct.mp_filter* %5, null
  br i1 %6, label %7, label %22

7:                                                ; preds = %4
  %8 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %9 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %8, i32 0, i32 1
  %10 = load %struct.mp_stream_info*, %struct.mp_stream_info** %9, align 8
  %11 = icmp ne %struct.mp_stream_info* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %14 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %13, i32 0, i32 1
  %15 = load %struct.mp_stream_info*, %struct.mp_stream_info** %14, align 8
  store %struct.mp_stream_info* %15, %struct.mp_stream_info** %2, align 8
  br label %23

16:                                               ; preds = %7
  %17 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %18 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.mp_filter*, %struct.mp_filter** %20, align 8
  store %struct.mp_filter* %21, %struct.mp_filter** %3, align 8
  br label %4

22:                                               ; preds = %4
  store %struct.mp_stream_info* null, %struct.mp_stream_info** %2, align 8
  br label %23

23:                                               ; preds = %22, %12
  %24 = load %struct.mp_stream_info*, %struct.mp_stream_info** %2, align 8
  ret %struct.mp_stream_info* %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
