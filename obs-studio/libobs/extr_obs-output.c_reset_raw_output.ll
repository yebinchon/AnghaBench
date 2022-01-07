; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_reset_raw_output.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_reset_raw_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64, i32, i64, i32, i64, i64, %struct.audio_convert_info, i64 }
%struct.audio_convert_info = type { i64, i64, i64, i32, i32, i32 }
%struct.audio_output_info = type { i32, i32, i32 }

@AUDIO_FORMAT_UNKNOWN = common dso_local global i64 0, align 8
@SPEAKERS_UNKNOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @reset_raw_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_raw_output(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.audio_output_info*, align 8
  %4 = alloca %struct.audio_convert_info, align 8
  %5 = alloca %struct.audio_convert_info, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %7 = call i32 @clear_audio_buffers(%struct.TYPE_4__* %6)
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 9
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %91

12:                                               ; preds = %1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 9
  %15 = load i64, i64* %14, align 8
  %16 = call %struct.audio_output_info* @audio_output_get_info(i64 %15)
  store %struct.audio_output_info* %16, %struct.audio_output_info** %3, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 8
  %19 = bitcast %struct.audio_convert_info* %4 to i8*
  %20 = bitcast %struct.audio_convert_info* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 40, i1 false)
  %21 = getelementptr inbounds %struct.audio_convert_info, %struct.audio_convert_info* %5, i32 0, i32 0
  %22 = load %struct.audio_output_info*, %struct.audio_output_info** %3, align 8
  %23 = getelementptr inbounds %struct.audio_output_info, %struct.audio_output_info* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %21, align 8
  %26 = getelementptr inbounds %struct.audio_convert_info, %struct.audio_convert_info* %5, i32 0, i32 1
  %27 = load %struct.audio_output_info*, %struct.audio_output_info** %3, align 8
  %28 = getelementptr inbounds %struct.audio_output_info, %struct.audio_output_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %26, align 8
  %31 = getelementptr inbounds %struct.audio_convert_info, %struct.audio_convert_info* %5, i32 0, i32 2
  %32 = load %struct.audio_output_info*, %struct.audio_output_info** %3, align 8
  %33 = getelementptr inbounds %struct.audio_output_info, %struct.audio_output_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %31, align 8
  %36 = getelementptr inbounds %struct.audio_convert_info, %struct.audio_convert_info* %5, i32 0, i32 3
  store i32 0, i32* %36, align 8
  %37 = getelementptr inbounds %struct.audio_convert_info, %struct.audio_convert_info* %5, i32 0, i32 4
  store i32 0, i32* %37, align 4
  %38 = getelementptr inbounds %struct.audio_convert_info, %struct.audio_convert_info* %5, i32 0, i32 5
  store i32 0, i32* %38, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 7
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %70

43:                                               ; preds = %12
  %44 = getelementptr inbounds %struct.audio_convert_info, %struct.audio_convert_info* %4, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.audio_convert_info, %struct.audio_convert_info* %4, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.audio_convert_info, %struct.audio_convert_info* %5, i32 0, i32 2
  store i64 %49, i64* %50, align 8
  br label %51

51:                                               ; preds = %47, %43
  %52 = getelementptr inbounds %struct.audio_convert_info, %struct.audio_convert_info* %4, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @AUDIO_FORMAT_UNKNOWN, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.audio_convert_info, %struct.audio_convert_info* %4, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.audio_convert_info, %struct.audio_convert_info* %5, i32 0, i32 0
  store i64 %58, i64* %59, align 8
  br label %60

60:                                               ; preds = %56, %51
  %61 = getelementptr inbounds %struct.audio_convert_info, %struct.audio_convert_info* %4, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SPEAKERS_UNKNOWN, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.audio_convert_info, %struct.audio_convert_info* %4, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.audio_convert_info, %struct.audio_convert_info* %5, i32 0, i32 1
  store i64 %67, i64* %68, align 8
  br label %69

69:                                               ; preds = %65, %60
  br label %70

70:                                               ; preds = %69, %12
  %71 = getelementptr inbounds %struct.audio_convert_info, %struct.audio_convert_info* %5, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 6
  store i64 %72, i64* %74, align 8
  %75 = getelementptr inbounds %struct.audio_convert_info, %struct.audio_convert_info* %5, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.audio_convert_info, %struct.audio_convert_info* %5, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @get_audio_planes(i64 %76, i64 %78)
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 4
  store i64 0, i64* %83, align 8
  %84 = getelementptr inbounds %struct.audio_convert_info, %struct.audio_convert_info* %5, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.audio_convert_info, %struct.audio_convert_info* %5, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @get_audio_size(i64 %85, i64 %87, i32 1)
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 8
  br label %91

91:                                               ; preds = %70, %1
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  store i64 0, i64* %93, align 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  store i64 0, i64* %95, align 8
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = call i32 @pause_reset(i32* %97)
  ret void
}

declare dso_local i32 @clear_audio_buffers(%struct.TYPE_4__*) #1

declare dso_local %struct.audio_output_info* @audio_output_get_info(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @get_audio_planes(i64, i64) #1

declare dso_local i32 @get_audio_size(i64, i64, i32) #1

declare dso_local i32 @pause_reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
