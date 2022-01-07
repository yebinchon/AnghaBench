; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/audio/extr_audio.c_stop_note.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/audio/extr_audio.c_stop_note.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"audio stop note freq=%d\00", align 1
@playing_note = common dso_local global i32 0, align 4
@audio_initialized = common dso_local global i32 0, align 4
@frequencies = common dso_local global float* null, align 8
@volumes = common dso_local global i64* null, align 8
@voices = common dso_local global i64 0, align 8
@voice_place = common dso_local global i64 0, align 8
@frequency = common dso_local global i64 0, align 8
@frequency_alt = common dso_local global i64 0, align 8
@volume = common dso_local global i64 0, align 8
@DISABLE_AUDIO_COUNTER_1_ISR = common dso_local global i32 0, align 4
@DISABLE_AUDIO_COUNTER_1_OUTPUT = common dso_local global i32 0, align 4
@DISABLE_AUDIO_COUNTER_3_ISR = common dso_local global i32 0, align 4
@DISABLE_AUDIO_COUNTER_3_OUTPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stop_note(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store float %0, float* %2, align 4
  %5 = load float, float* %2, align 4
  %6 = fptosi float %5 to i32
  %7 = call i32 @dprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load i32, i32* @playing_note, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %95

10:                                               ; preds = %1
  %11 = load i32, i32* @audio_initialized, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = call i32 (...) @audio_init()
  br label %15

15:                                               ; preds = %13, %10
  store i32 7, i32* %3, align 4
  br label %16

16:                                               ; preds = %76, %15
  %17 = load i32, i32* %3, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %79

19:                                               ; preds = %16
  %20 = load float*, float** @frequencies, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds float, float* %20, i64 %22
  %24 = load float, float* %23, align 4
  %25 = load float, float* %2, align 4
  %26 = fcmp oeq float %24, %25
  br i1 %26, label %27, label %75

27:                                               ; preds = %19
  %28 = load float*, float** @frequencies, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds float, float* %28, i64 %30
  store float 0.000000e+00, float* %31, align 4
  %32 = load i64*, i64** @volumes, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* %3, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %71, %27
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 7
  br i1 %39, label %40, label %74

40:                                               ; preds = %37
  %41 = load float*, float** @frequencies, align 8
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds float, float* %41, i64 %44
  %46 = load float, float* %45, align 4
  %47 = load float*, float** @frequencies, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float* %47, i64 %49
  store float %46, float* %50, align 4
  %51 = load float*, float** @frequencies, align 8
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float, float* %51, i64 %54
  store float 0.000000e+00, float* %55, align 4
  %56 = load i64*, i64** @volumes, align 8
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %56, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = load i64*, i64** @volumes, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  store i64 %61, i64* %65, align 8
  %66 = load i64*, i64** @volumes, align 8
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %66, i64 %69
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %40
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %4, align 4
  br label %37

74:                                               ; preds = %37
  br label %79

75:                                               ; preds = %19
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %3, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %3, align 4
  br label %16

79:                                               ; preds = %74, %16
  %80 = load i64, i64* @voices, align 8
  %81 = add nsw i64 %80, -1
  store i64 %81, i64* @voices, align 8
  %82 = load i64, i64* @voices, align 8
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store i64 0, i64* @voices, align 8
  br label %85

85:                                               ; preds = %84, %79
  %86 = load i64, i64* @voice_place, align 8
  %87 = load i64, i64* @voices, align 8
  %88 = icmp sge i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  store i64 0, i64* @voice_place, align 8
  br label %90

90:                                               ; preds = %89, %85
  %91 = load i64, i64* @voices, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  store i64 0, i64* @frequency, align 8
  store i64 0, i64* @frequency_alt, align 8
  store i64 0, i64* @volume, align 8
  store i32 0, i32* @playing_note, align 4
  br label %94

94:                                               ; preds = %93, %90
  br label %95

95:                                               ; preds = %94, %1
  ret void
}

declare dso_local i32 @dprintf(i8*, i32) #1

declare dso_local i32 @audio_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
