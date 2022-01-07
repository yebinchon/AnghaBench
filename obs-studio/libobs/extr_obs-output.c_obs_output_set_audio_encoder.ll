; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_obs_output_set_audio_encoder.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_obs_output_set_audio_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__**, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"obs_output_set_audio_encoder\00", align 1
@OBS_ENCODER_AUDIO = common dso_local global i64 0, align 8
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"obs_output_set_audio_encoder: encoder passed is not an audio encoder\00", align 1
@OBS_OUTPUT_MULTI_TRACK = common dso_local global i32 0, align 4
@MAX_AUDIO_MIXES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_output_set_audio_encoder(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %8 = call i32 @obs_output_valid(%struct.TYPE_14__* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  br label %71

11:                                               ; preds = %3
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %13 = icmp ne %struct.TYPE_15__* %12, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %11
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @OBS_ENCODER_AUDIO, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load i32, i32* @LOG_WARNING, align 4
  %23 = call i32 @blog(i32 %22, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0))
  br label %71

24:                                               ; preds = %14, %11
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @OBS_OUTPUT_MULTI_TRACK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @MAX_AUDIO_MIXES, align 8
  %35 = icmp uge i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %71

37:                                               ; preds = %32
  br label %43

38:                                               ; preds = %24
  %39 = load i64, i64* %6, align 8
  %40 = icmp ugt i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %71

42:                                               ; preds = %38
  br label %43

43:                                               ; preds = %42, %37
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %46, i64 %47
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %48, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %51 = icmp eq %struct.TYPE_15__* %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %71

53:                                               ; preds = %43
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %55, align 8
  %57 = load i64, i64* %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %56, i64 %57
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %58, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %61 = call i32 @obs_encoder_remove_output(%struct.TYPE_15__* %59, %struct.TYPE_14__* %60)
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %64 = call i32 @obs_encoder_add_output(%struct.TYPE_15__* %62, %struct.TYPE_14__* %63)
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %67, align 8
  %69 = load i64, i64* %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %68, i64 %69
  store %struct.TYPE_15__* %65, %struct.TYPE_15__** %70, align 8
  br label %71

71:                                               ; preds = %53, %52, %41, %36, %21, %10
  ret void
}

declare dso_local i32 @obs_output_valid(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i32 @obs_encoder_remove_output(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local i32 @obs_encoder_add_output(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
