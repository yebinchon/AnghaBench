; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_audio-io.c_resample_audio_output.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_audio-io.c_resample_audio_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_input = type { i64 }
%struct.audio_data = type { i32, i32, i32** }

@MAX_AV_PLANES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.audio_input*, %struct.audio_data*)* @resample_audio_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resample_audio_output(%struct.audio_input* %0, %struct.audio_data* %1) #0 {
  %3 = alloca %struct.audio_input*, align 8
  %4 = alloca %struct.audio_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.audio_input* %0, %struct.audio_input** %3, align 8
  store %struct.audio_data* %1, %struct.audio_data** %4, align 8
  store i32 1, i32* %5, align 4
  %11 = load %struct.audio_input*, %struct.audio_input** %3, align 8
  %12 = getelementptr inbounds %struct.audio_input, %struct.audio_input* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %62

15:                                               ; preds = %2
  %16 = load i32, i32* @MAX_AV_PLANES, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %6, align 8
  %19 = alloca i32*, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  %20 = mul nuw i64 8, %17
  %21 = trunc i64 %20 to i32
  %22 = call i32 @memset(i32** %19, i32 0, i32 %21)
  %23 = load %struct.audio_input*, %struct.audio_input** %3, align 8
  %24 = getelementptr inbounds %struct.audio_input, %struct.audio_input* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.audio_data*, %struct.audio_data** %4, align 8
  %27 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %26, i32 0, i32 2
  %28 = load i32**, i32*** %27, align 8
  %29 = load %struct.audio_data*, %struct.audio_data** %4, align 8
  %30 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @audio_resampler_resample(i64 %25, i32** %19, i32* %8, i64* %9, i32** %28, i32 %31)
  store i32 %32, i32* %5, align 4
  store i64 0, i64* %10, align 8
  br label %33

33:                                               ; preds = %47, %15
  %34 = load i64, i64* %10, align 8
  %35 = load i32, i32* @MAX_AV_PLANES, align 4
  %36 = sext i32 %35 to i64
  %37 = icmp ult i64 %34, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = load i64, i64* %10, align 8
  %40 = getelementptr inbounds i32*, i32** %19, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.audio_data*, %struct.audio_data** %4, align 8
  %43 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %42, i32 0, i32 2
  %44 = load i32**, i32*** %43, align 8
  %45 = load i64, i64* %10, align 8
  %46 = getelementptr inbounds i32*, i32** %44, i64 %45
  store i32* %41, i32** %46, align 8
  br label %47

47:                                               ; preds = %38
  %48 = load i64, i64* %10, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %10, align 8
  br label %33

50:                                               ; preds = %33
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.audio_data*, %struct.audio_data** %4, align 8
  %53 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i64, i64* %9, align 8
  %55 = load %struct.audio_data*, %struct.audio_data** %4, align 8
  %56 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = sub nsw i64 %58, %54
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %56, align 8
  %61 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %61)
  br label %62

62:                                               ; preds = %50, %2
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32**, i32, i32) #2

declare dso_local i32 @audio_resampler_resample(i64, i32**, i32*, i64*, i32**, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
