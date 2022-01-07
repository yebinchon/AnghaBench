; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/audio/extr_audio_pwm.c_stop_note.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/audio/extr_audio_pwm.c_stop_note.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@playing_note = common dso_local global i32 0, align 4
@audio_initialized = common dso_local global i32 0, align 4
@frequencies = common dso_local global float* null, align 8
@volumes = common dso_local global i64* null, align 8
@voices = common dso_local global i64 0, align 8
@voice_place = common dso_local global i64 0, align 8
@DISABLE_AUDIO_COUNTER_3_ISR = common dso_local global i32 0, align 4
@DISABLE_AUDIO_COUNTER_3_OUTPUT = common dso_local global i32 0, align 4
@frequency = common dso_local global i64 0, align 8
@volume = common dso_local global i64 0, align 8
@SAMPLE_RATE = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stop_note(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store float %0, float* %2, align 4
  %5 = load i32, i32* @playing_note, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %94

7:                                                ; preds = %1
  %8 = load i32, i32* @audio_initialized, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = call i32 (...) @audio_init()
  br label %12

12:                                               ; preds = %10, %7
  store i32 7, i32* %3, align 4
  br label %13

13:                                               ; preds = %73, %12
  %14 = load i32, i32* %3, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %76

16:                                               ; preds = %13
  %17 = load float*, float** @frequencies, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds float, float* %17, i64 %19
  %21 = load float, float* %20, align 4
  %22 = load float, float* %2, align 4
  %23 = fcmp oeq float %21, %22
  br i1 %23, label %24, label %72

24:                                               ; preds = %16
  %25 = load float*, float** @frequencies, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, float* %25, i64 %27
  store float 0.000000e+00, float* %28, align 4
  %29 = load i64*, i64** @volumes, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* %3, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %68, %24
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %35, 7
  br i1 %36, label %37, label %71

37:                                               ; preds = %34
  %38 = load float*, float** @frequencies, align 8
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds float, float* %38, i64 %41
  %43 = load float, float* %42, align 4
  %44 = load float*, float** @frequencies, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float, float* %44, i64 %46
  store float %43, float* %47, align 4
  %48 = load float*, float** @frequencies, align 8
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds float, float* %48, i64 %51
  store float 0.000000e+00, float* %52, align 4
  %53 = load i64*, i64** @volumes, align 8
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %53, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load i64*, i64** @volumes, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  store i64 %58, i64* %62, align 8
  %63 = load i64*, i64** @volumes, align 8
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %63, i64 %66
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %37
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %34

71:                                               ; preds = %34
  br label %76

72:                                               ; preds = %16
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %3, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %3, align 4
  br label %13

76:                                               ; preds = %71, %13
  %77 = load i64, i64* @voices, align 8
  %78 = add nsw i64 %77, -1
  store i64 %78, i64* @voices, align 8
  %79 = load i64, i64* @voices, align 8
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i64 0, i64* @voices, align 8
  br label %82

82:                                               ; preds = %81, %76
  %83 = load i64, i64* @voice_place, align 8
  %84 = load i64, i64* @voices, align 8
  %85 = icmp sge i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i64 0, i64* @voice_place, align 8
  br label %87

87:                                               ; preds = %86, %82
  %88 = load i64, i64* @voices, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32, i32* @DISABLE_AUDIO_COUNTER_3_ISR, align 4
  %92 = load i32, i32* @DISABLE_AUDIO_COUNTER_3_OUTPUT, align 4
  store i64 0, i64* @frequency, align 8
  store i64 0, i64* @volume, align 8
  store i32 0, i32* @playing_note, align 4
  br label %93

93:                                               ; preds = %90, %87
  br label %94

94:                                               ; preds = %93, %1
  ret void
}

declare dso_local i32 @audio_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
