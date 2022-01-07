; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/mac-capture/extr_mac-audio.c_input_callback.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/mac-capture/extr_mac-audio.c_input_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.coreaudio_data = type { i32, i32, i32, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.obs_source_audio = type { i64, i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [15 x i8] c"input_callback\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"audio retrieval\00", align 1
@noErr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, %struct.TYPE_7__*, i64, i64, i32*)* @input_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_callback(i8* %0, i32* %1, %struct.TYPE_7__* %2, i64 %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.coreaudio_data*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.obs_source_audio, align 8
  %17 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to %struct.coreaudio_data*
  store %struct.coreaudio_data* %19, %struct.coreaudio_data** %14, align 8
  %20 = load %struct.coreaudio_data*, %struct.coreaudio_data** %14, align 8
  %21 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* %12, align 8
  %27 = load %struct.coreaudio_data*, %struct.coreaudio_data** %14, align 8
  %28 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %27, i32 0, i32 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = call i32 @AudioUnitRender(i32 %22, i32* %23, %struct.TYPE_7__* %24, i64 %25, i64 %26, %struct.TYPE_8__* %29)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = load %struct.coreaudio_data*, %struct.coreaudio_data** %14, align 8
  %33 = call i32 @ca_success(i32 %31, %struct.coreaudio_data* %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %6
  %36 = load i32, i32* @noErr, align 4
  store i32 %36, i32* %7, align 4
  br label %89

37:                                               ; preds = %6
  store i64 0, i64* %17, align 8
  br label %38

38:                                               ; preds = %60, %37
  %39 = load i64, i64* %17, align 8
  %40 = load %struct.coreaudio_data*, %struct.coreaudio_data** %14, align 8
  %41 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %40, i32 0, i32 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ult i64 %39, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %38
  %47 = load %struct.coreaudio_data*, %struct.coreaudio_data** %14, align 8
  %48 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %47, i32 0, i32 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = load i64, i64* %17, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %16, i32 0, i32 5
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* %17, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32 %55, i32* %59, align 4
  br label %60

60:                                               ; preds = %46
  %61 = load i64, i64* %17, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %17, align 8
  br label %38

63:                                               ; preds = %38
  %64 = load i64, i64* %12, align 8
  %65 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %16, i32 0, i32 0
  store i64 %64, i64* %65, align 8
  %66 = load %struct.coreaudio_data*, %struct.coreaudio_data** %14, align 8
  %67 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %16, i32 0, i32 4
  store i32 %68, i32* %69, align 4
  %70 = load %struct.coreaudio_data*, %struct.coreaudio_data** %14, align 8
  %71 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %16, i32 0, i32 3
  store i32 %72, i32* %73, align 8
  %74 = load %struct.coreaudio_data*, %struct.coreaudio_data** %14, align 8
  %75 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %16, i32 0, i32 2
  store i32 %76, i32* %77, align 4
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %16, i32 0, i32 1
  store i32 %80, i32* %81, align 8
  %82 = load %struct.coreaudio_data*, %struct.coreaudio_data** %14, align 8
  %83 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @obs_source_output_audio(i32 %84, %struct.obs_source_audio* %16)
  %86 = load i32*, i32** %13, align 8
  %87 = call i32 @UNUSED_PARAMETER(i32* %86)
  %88 = load i32, i32* @noErr, align 4
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %63, %35
  %90 = load i32, i32* %7, align 4
  ret i32 %90
}

declare dso_local i32 @AudioUnitRender(i32, i32*, %struct.TYPE_7__*, i64, i64, %struct.TYPE_8__*) #1

declare dso_local i32 @ca_success(i32, %struct.coreaudio_data*, i8*, i8*) #1

declare dso_local i32 @obs_source_output_audio(i32, %struct.obs_source_audio*) #1

declare dso_local i32 @UNUSED_PARAMETER(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
