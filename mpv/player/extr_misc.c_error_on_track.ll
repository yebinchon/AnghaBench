; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_misc.c_error_on_track.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_misc.c_error_on_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i64, i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.track = type { i64, i32 }

@STREAM_AUDIO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"Audio: no audio\0A\00", align 1
@STREAM_VIDEO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"Video: no video\0A\00", align 1
@PT_ERROR = common dso_local global i64 0, align 8
@MPV_ERROR_NOTHING_TO_PLAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error_on_track(%struct.MPContext* %0, %struct.track* %1) #0 {
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca %struct.track*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %3, align 8
  store %struct.track* %1, %struct.track** %4, align 8
  %5 = load %struct.track*, %struct.track** %4, align 8
  %6 = icmp ne %struct.track* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load %struct.track*, %struct.track** %4, align 8
  %9 = getelementptr inbounds %struct.track, %struct.track* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7, %2
  br label %73

13:                                               ; preds = %7
  %14 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %15 = load %struct.track*, %struct.track** %4, align 8
  %16 = call i32 @mp_deselect_track(%struct.MPContext* %14, %struct.track* %15)
  %17 = load %struct.track*, %struct.track** %4, align 8
  %18 = getelementptr inbounds %struct.track, %struct.track* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @STREAM_AUDIO, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %24 = call i32 @MP_INFO(%struct.MPContext* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %13
  %26 = load %struct.track*, %struct.track** %4, align 8
  %27 = getelementptr inbounds %struct.track, %struct.track* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @STREAM_VIDEO, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %33 = call i32 @MP_INFO(%struct.MPContext* %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %25
  %35 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %36 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %35, i32 0, i32 4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %34
  %42 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %43 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %70, label %46

46:                                               ; preds = %41
  %47 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %48 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %70, label %51

51:                                               ; preds = %46, %34
  %52 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %53 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %51
  %57 = load i64, i64* @PT_ERROR, align 8
  %58 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %59 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %56, %51
  %61 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %62 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp sge i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i64, i64* @MPV_ERROR_NOTHING_TO_PLAY, align 8
  %67 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %68 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %65, %60
  br label %70

70:                                               ; preds = %69, %46, %41
  %71 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %72 = call i32 @mp_wakeup_core(%struct.MPContext* %71)
  br label %73

73:                                               ; preds = %70, %12
  ret void
}

declare dso_local i32 @mp_deselect_track(%struct.MPContext*, %struct.track*) #1

declare dso_local i32 @MP_INFO(%struct.MPContext*, i8*) #1

declare dso_local i32 @mp_wakeup_core(%struct.MPContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
