; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_playloop.c_handle_playback_time.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_playloop.c_handle_playback_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i64, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@STATUS_PLAYING = common dso_local global i64 0, align 8
@STATUS_EOF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPContext*)* @handle_playback_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_playback_time(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  %3 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %4 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %3, i32 0, i32 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  br i1 %6, label %7, label %39

7:                                                ; preds = %1
  %8 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %9 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %8, i32 0, i32 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %39, label %14

14:                                               ; preds = %7
  %15 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %16 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %15, i32 0, i32 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %39, label %21

21:                                               ; preds = %14
  %22 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %23 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @STATUS_PLAYING, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %21
  %28 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %29 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @STATUS_EOF, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %35 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %38 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  br label %57

39:                                               ; preds = %27, %21, %14, %7, %1
  %40 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %41 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @STATUS_PLAYING, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %39
  %46 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %47 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @STATUS_EOF, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %53 = call i32 @playing_audio_pts(%struct.MPContext* %52)
  %54 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %55 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  br label %56

56:                                               ; preds = %51, %45, %39
  br label %57

57:                                               ; preds = %56, %33
  ret void
}

declare dso_local i32 @playing_audio_pts(%struct.MPContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
