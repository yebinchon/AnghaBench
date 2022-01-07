; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-pulseaudio/extr_pulse-input.c_pulse_stream_read.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-pulseaudio/extr_pulse-input.c_pulse_stream_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.obs_source_audio = type { i64, i64, i32, i32**, i32, i32 }

@data = common dso_local global %struct.TYPE_2__* null, align 8
@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Got audio hole of %u bytes\00", align 1
@STARTUP_TIMEOUT_NS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i8*)* @pulse_stream_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pulse_stream_read(i32* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.obs_source_audio, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = ptrtoint i32* %10 to i64
  %12 = call i32 @UNUSED_PARAMETER(i64 %11)
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @UNUSED_PARAMETER(i64 %13)
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @PULSE_DATA(i8* %15)
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @data, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  br label %113

22:                                               ; preds = %3
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @data, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @pa_stream_peek(i32 %25, i8** %7, i64* %8)
  %27 = load i64, i64* %8, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  br label %113

30:                                               ; preds = %22
  %31 = load i8*, i8** %7, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* @LOG_ERROR, align 4
  %35 = load i64, i64* %8, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @blog(i32 %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @data, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @pa_stream_drop(i32 %40)
  br label %113

42:                                               ; preds = %30
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @data, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 8
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %9, i32 0, i32 5
  store i32 %45, i32* %46, align 4
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @data, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %9, i32 0, i32 2
  store i32 %49, i32* %50, align 8
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @data, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @pulse_to_obs_audio_format(i32 %53)
  %55 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %9, i32 0, i32 4
  store i32 %54, i32* %55, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = bitcast i8* %56 to i32*
  %58 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %9, i32 0, i32 3
  %59 = load i32**, i32*** %58, align 8
  %60 = getelementptr inbounds i32*, i32** %59, i64 0
  store i32* %57, i32** %60, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @data, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = udiv i64 %61, %64
  %66 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %9, i32 0, i32 0
  store i64 %65, i64* %66, align 8
  %67 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %9, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %9, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @get_sample_time(i64 %68, i32 %70)
  %72 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %9, i32 0, i32 1
  store i64 %71, i64* %72, align 8
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @data, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %42
  %78 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %9, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @STARTUP_TIMEOUT_NS, align 8
  %81 = add nsw i64 %79, %80
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @data, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  br label %84

84:                                               ; preds = %77, %42
  %85 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %9, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @data, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp sgt i64 %86, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %84
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @data, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @obs_source_output_audio(i32 %94, %struct.obs_source_audio* %9)
  br label %96

96:                                               ; preds = %91, %84
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @data, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 8
  %101 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %9, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** @data, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = add i64 %106, %102
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %104, align 4
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** @data, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @pa_stream_drop(i32 %111)
  br label %113

113:                                              ; preds = %96, %33, %29, %21
  %114 = call i32 @pulse_signal(i32 0)
  ret void
}

declare dso_local i32 @UNUSED_PARAMETER(i64) #1

declare dso_local i32 @PULSE_DATA(i8*) #1

declare dso_local i32 @pa_stream_peek(i32, i8**, i64*) #1

declare dso_local i32 @blog(i32, i8*, i32) #1

declare dso_local i32 @pa_stream_drop(i32) #1

declare dso_local i32 @pulse_to_obs_audio_format(i32) #1

declare dso_local i64 @get_sample_time(i64, i32) #1

declare dso_local i32 @obs_source_output_audio(i32, %struct.obs_source_audio*) #1

declare dso_local i32 @pulse_signal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
