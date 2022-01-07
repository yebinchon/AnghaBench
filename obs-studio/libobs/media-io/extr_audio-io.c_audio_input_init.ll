; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_audio-io.c_audio_input_init.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_audio-io.c_audio_input_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_input = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.audio_output = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.resample_info = type { i64, i64, i64 }

@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"audio_input_init: Failed to create resampler\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.audio_input*, %struct.audio_output*)* @audio_input_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audio_input_init(%struct.audio_input* %0, %struct.audio_output* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.audio_input*, align 8
  %5 = alloca %struct.audio_output*, align 8
  %6 = alloca %struct.resample_info, align 8
  %7 = alloca %struct.resample_info, align 8
  store %struct.audio_input* %0, %struct.audio_input** %4, align 8
  store %struct.audio_output* %1, %struct.audio_output** %5, align 8
  %8 = load %struct.audio_input*, %struct.audio_input** %4, align 8
  %9 = getelementptr inbounds %struct.audio_input, %struct.audio_input* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.audio_output*, %struct.audio_output** %5, align 8
  %13 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %11, %15
  br i1 %16, label %37, label %17

17:                                               ; preds = %2
  %18 = load %struct.audio_input*, %struct.audio_input** %4, align 8
  %19 = getelementptr inbounds %struct.audio_input, %struct.audio_input* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.audio_output*, %struct.audio_output** %5, align 8
  %23 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %21, %25
  br i1 %26, label %37, label %27

27:                                               ; preds = %17
  %28 = load %struct.audio_input*, %struct.audio_input** %4, align 8
  %29 = getelementptr inbounds %struct.audio_input, %struct.audio_input* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.audio_output*, %struct.audio_output** %5, align 8
  %33 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %31, %35
  br i1 %36, label %37, label %79

37:                                               ; preds = %27, %17, %2
  %38 = getelementptr inbounds %struct.resample_info, %struct.resample_info* %6, i32 0, i32 0
  %39 = load %struct.audio_output*, %struct.audio_output** %5, align 8
  %40 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %38, align 8
  %43 = getelementptr inbounds %struct.resample_info, %struct.resample_info* %6, i32 0, i32 1
  %44 = load %struct.audio_output*, %struct.audio_output** %5, align 8
  %45 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %43, align 8
  %48 = getelementptr inbounds %struct.resample_info, %struct.resample_info* %6, i32 0, i32 2
  %49 = load %struct.audio_output*, %struct.audio_output** %5, align 8
  %50 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %48, align 8
  %53 = getelementptr inbounds %struct.resample_info, %struct.resample_info* %7, i32 0, i32 0
  %54 = load %struct.audio_input*, %struct.audio_input** %4, align 8
  %55 = getelementptr inbounds %struct.audio_input, %struct.audio_input* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %53, align 8
  %58 = getelementptr inbounds %struct.resample_info, %struct.resample_info* %7, i32 0, i32 1
  %59 = load %struct.audio_input*, %struct.audio_input** %4, align 8
  %60 = getelementptr inbounds %struct.audio_input, %struct.audio_input* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %58, align 8
  %63 = getelementptr inbounds %struct.resample_info, %struct.resample_info* %7, i32 0, i32 2
  %64 = load %struct.audio_input*, %struct.audio_input** %4, align 8
  %65 = getelementptr inbounds %struct.audio_input, %struct.audio_input* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %63, align 8
  %68 = call i32* @audio_resampler_create(%struct.resample_info* %7, %struct.resample_info* %6)
  %69 = load %struct.audio_input*, %struct.audio_input** %4, align 8
  %70 = getelementptr inbounds %struct.audio_input, %struct.audio_input* %69, i32 0, i32 0
  store i32* %68, i32** %70, align 8
  %71 = load %struct.audio_input*, %struct.audio_input** %4, align 8
  %72 = getelementptr inbounds %struct.audio_input, %struct.audio_input* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %37
  %76 = load i32, i32* @LOG_ERROR, align 4
  %77 = call i32 @blog(i32 %76, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %83

78:                                               ; preds = %37
  br label %82

79:                                               ; preds = %27
  %80 = load %struct.audio_input*, %struct.audio_input** %4, align 8
  %81 = getelementptr inbounds %struct.audio_input, %struct.audio_input* %80, i32 0, i32 0
  store i32* null, i32** %81, align 8
  br label %82

82:                                               ; preds = %79, %78
  store i32 1, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %75
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32* @audio_resampler_create(%struct.resample_info*, %struct.resample_info*) #1

declare dso_local i32 @blog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
