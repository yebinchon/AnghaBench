; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-encoder.c_buffer_audio.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-encoder.c_buffer_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_encoder = type { i64, i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.audio_data = type { i64, i64 }

@buffer_audio_name = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.obs_encoder*, %struct.audio_data*)* @buffer_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buffer_audio(%struct.obs_encoder* %0, %struct.audio_data* %1) #0 {
  %3 = alloca %struct.obs_encoder*, align 8
  %4 = alloca %struct.audio_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.obs_encoder* %0, %struct.obs_encoder** %3, align 8
  store %struct.audio_data* %1, %struct.audio_data** %4, align 8
  %10 = load i32, i32* @buffer_audio_name, align 4
  %11 = call i32 @profile_start(i32 %10)
  %12 = load %struct.audio_data*, %struct.audio_data** %4, align 8
  %13 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.obs_encoder*, %struct.obs_encoder** %3, align 8
  %16 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = mul i64 %14, %17
  store i64 %18, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i32 1, i32* %7, align 4
  %19 = load %struct.obs_encoder*, %struct.obs_encoder** %3, align 8
  %20 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %91, label %23

23:                                               ; preds = %2
  %24 = load %struct.obs_encoder*, %struct.obs_encoder** %3, align 8
  %25 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = icmp ne %struct.TYPE_2__* %26, null
  br i1 %27, label %28, label %91

28:                                               ; preds = %23
  %29 = load %struct.audio_data*, %struct.audio_data** %4, align 8
  %30 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %8, align 8
  %32 = load %struct.obs_encoder*, %struct.obs_encoder** %3, align 8
  %33 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %9, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %28
  store i32 0, i32* %7, align 4
  br label %109

40:                                               ; preds = %28
  %41 = load %struct.audio_data*, %struct.audio_data** %4, align 8
  %42 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = mul i64 %43, 1000000000
  %45 = load %struct.obs_encoder*, %struct.obs_encoder** %3, align 8
  %46 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = udiv i64 %44, %47
  %49 = load i64, i64* %8, align 8
  %50 = add i64 %49, %48
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp ule i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  br label %109

55:                                               ; preds = %40
  %56 = load %struct.audio_data*, %struct.audio_data** %4, align 8
  %57 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %9, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  %62 = load %struct.obs_encoder*, %struct.obs_encoder** %3, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load %struct.audio_data*, %struct.audio_data** %4, align 8
  %65 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @calc_offset_size(%struct.obs_encoder* %62, i64 %63, i64 %66)
  store i64 %67, i64* %6, align 8
  br label %68

68:                                               ; preds = %61, %55
  %69 = load %struct.audio_data*, %struct.audio_data** %4, align 8
  %70 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %9, align 8
  %73 = icmp ule i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load %struct.obs_encoder*, %struct.obs_encoder** %3, align 8
  %76 = call i32 @clear_audio(%struct.obs_encoder* %75)
  br label %77

77:                                               ; preds = %74, %68
  %78 = load i64, i64* %9, align 8
  %79 = load %struct.obs_encoder*, %struct.obs_encoder** %3, align 8
  %80 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  %81 = load i64, i64* %9, align 8
  %82 = load %struct.audio_data*, %struct.audio_data** %4, align 8
  %83 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ult i64 %81, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %77
  %87 = load %struct.obs_encoder*, %struct.obs_encoder** %3, align 8
  %88 = load i64, i64* %9, align 8
  %89 = call i32 @start_from_buffer(%struct.obs_encoder* %87, i64 %88)
  br label %90

90:                                               ; preds = %86, %77
  br label %108

91:                                               ; preds = %23, %2
  %92 = load %struct.obs_encoder*, %struct.obs_encoder** %3, align 8
  %93 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %107, label %96

96:                                               ; preds = %91
  %97 = load %struct.obs_encoder*, %struct.obs_encoder** %3, align 8
  %98 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %97, i32 0, i32 2
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = icmp ne %struct.TYPE_2__* %99, null
  br i1 %100, label %107, label %101

101:                                              ; preds = %96
  %102 = load %struct.audio_data*, %struct.audio_data** %4, align 8
  %103 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.obs_encoder*, %struct.obs_encoder** %3, align 8
  %106 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %105, i32 0, i32 1
  store i64 %104, i64* %106, align 8
  br label %107

107:                                              ; preds = %101, %96, %91
  br label %108

108:                                              ; preds = %107, %90
  br label %109

109:                                              ; preds = %108, %54, %39
  %110 = load %struct.obs_encoder*, %struct.obs_encoder** %3, align 8
  %111 = load %struct.audio_data*, %struct.audio_data** %4, align 8
  %112 = load i64, i64* %5, align 8
  %113 = load i64, i64* %6, align 8
  %114 = call i32 @push_back_audio(%struct.obs_encoder* %110, %struct.audio_data* %111, i64 %112, i64 %113)
  %115 = load i32, i32* @buffer_audio_name, align 4
  %116 = call i32 @profile_end(i32 %115)
  %117 = load i32, i32* %7, align 4
  ret i32 %117
}

declare dso_local i32 @profile_start(i32) #1

declare dso_local i64 @calc_offset_size(%struct.obs_encoder*, i64, i64) #1

declare dso_local i32 @clear_audio(%struct.obs_encoder*) #1

declare dso_local i32 @start_from_buffer(%struct.obs_encoder*, i64) #1

declare dso_local i32 @push_back_audio(%struct.obs_encoder*, %struct.audio_data*, i64, i64) #1

declare dso_local i32 @profile_end(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
