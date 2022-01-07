; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_dec_sub.c_sub_destroy.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_dec_sub.c_sub_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dec_sub = type { i32, %struct.dec_sub*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.dec_sub*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sub_destroy(%struct.dec_sub* %0) #0 {
  %2 = alloca %struct.dec_sub*, align 8
  store %struct.dec_sub* %0, %struct.dec_sub** %2, align 8
  %3 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %4 = icmp ne %struct.dec_sub* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %39

6:                                                ; preds = %1
  %7 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %8 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @demux_set_stream_wakeup_cb(i32 %9, i32* null, i32* null)
  %11 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %12 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %11, i32 0, i32 1
  %13 = load %struct.dec_sub*, %struct.dec_sub** %12, align 8
  %14 = icmp ne %struct.dec_sub* %13, null
  br i1 %14, label %15, label %29

15:                                               ; preds = %6
  %16 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %17 = call i32 @sub_reset(%struct.dec_sub* %16)
  %18 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %19 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %18, i32 0, i32 1
  %20 = load %struct.dec_sub*, %struct.dec_sub** %19, align 8
  %21 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.dec_sub*)*, i32 (%struct.dec_sub*)** %23, align 8
  %25 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %26 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %25, i32 0, i32 1
  %27 = load %struct.dec_sub*, %struct.dec_sub** %26, align 8
  %28 = call i32 %24(%struct.dec_sub* %27)
  br label %29

29:                                               ; preds = %15, %6
  %30 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %31 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %30, i32 0, i32 1
  %32 = load %struct.dec_sub*, %struct.dec_sub** %31, align 8
  %33 = call i32 @talloc_free(%struct.dec_sub* %32)
  %34 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %35 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %34, i32 0, i32 0
  %36 = call i32 @pthread_mutex_destroy(i32* %35)
  %37 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %38 = call i32 @talloc_free(%struct.dec_sub* %37)
  br label %39

39:                                               ; preds = %29, %5
  ret void
}

declare dso_local i32 @demux_set_stream_wakeup_cb(i32, i32*, i32*) #1

declare dso_local i32 @sub_reset(%struct.dec_sub*) #1

declare dso_local i32 @talloc_free(%struct.dec_sub*) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
