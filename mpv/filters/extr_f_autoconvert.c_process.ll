; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_autoconvert.c_process.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_autoconvert.c_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { %struct.priv* }
%struct.priv = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@MP_FRAME_VIDEO = common dso_local global i64 0, align 8
@MP_FRAME_AUDIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_filter*)* @process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process(%struct.mp_filter* %0) #0 {
  %2 = alloca %struct.mp_filter*, align 8
  %3 = alloca %struct.priv*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %2, align 8
  %4 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %5 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %4, i32 0, i32 0
  %6 = load %struct.priv*, %struct.priv** %5, align 8
  store %struct.priv* %6, %struct.priv** %3, align 8
  %7 = load %struct.priv*, %struct.priv** %3, align 8
  %8 = getelementptr inbounds %struct.priv, %struct.priv* %7, i32 0, i32 0
  %9 = call i32 @mp_subfilter_read(%struct.TYPE_5__* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %38

12:                                               ; preds = %1
  %13 = load %struct.priv*, %struct.priv** %3, align 8
  %14 = getelementptr inbounds %struct.priv, %struct.priv* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MP_FRAME_VIDEO, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %22 = call i32 @handle_video_frame(%struct.mp_filter* %21)
  br label %38

23:                                               ; preds = %12
  %24 = load %struct.priv*, %struct.priv** %3, align 8
  %25 = getelementptr inbounds %struct.priv, %struct.priv* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MP_FRAME_AUDIO, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %33 = call i32 @handle_audio_frame(%struct.mp_filter* %32)
  br label %38

34:                                               ; preds = %23
  %35 = load %struct.priv*, %struct.priv** %3, align 8
  %36 = getelementptr inbounds %struct.priv, %struct.priv* %35, i32 0, i32 0
  %37 = call i32 @mp_subfilter_continue(%struct.TYPE_5__* %36)
  br label %38

38:                                               ; preds = %34, %31, %20, %11
  ret void
}

declare dso_local i32 @mp_subfilter_read(%struct.TYPE_5__*) #1

declare dso_local i32 @handle_video_frame(%struct.mp_filter*) #1

declare dso_local i32 @handle_audio_frame(%struct.mp_filter*) #1

declare dso_local i32 @mp_subfilter_continue(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
