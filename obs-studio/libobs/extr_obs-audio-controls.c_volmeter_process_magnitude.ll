; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-audio-controls.c_volmeter_process_magnitude.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-audio-controls.c_volmeter_process_magnitude.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct.audio_data = type { i64, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.audio_data*, i32)* @volmeter_process_magnitude to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @volmeter_process_magnitude(%struct.TYPE_3__* %0, %struct.audio_data* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.audio_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca float, align 4
  %12 = alloca i64, align 8
  %13 = alloca float, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.audio_data* %1, %struct.audio_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.audio_data*, %struct.audio_data** %5, align 8
  %15 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %65, %3
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %68

21:                                               ; preds = %17
  %22 = load %struct.audio_data*, %struct.audio_data** %5, align 8
  %23 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to float*
  store float* %29, float** %10, align 8
  %30 = load float*, float** %10, align 8
  %31 = icmp ne float* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %21
  br label %65

33:                                               ; preds = %21
  store float 0.000000e+00, float* %11, align 4
  store i64 0, i64* %12, align 8
  br label %34

34:                                               ; preds = %48, %33
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %34
  %39 = load float*, float** %10, align 8
  %40 = load i64, i64* %12, align 8
  %41 = getelementptr inbounds float, float* %39, i64 %40
  %42 = load float, float* %41, align 4
  store float %42, float* %13, align 4
  %43 = load float, float* %13, align 4
  %44 = load float, float* %13, align 4
  %45 = fmul float %43, %44
  %46 = load float, float* %11, align 4
  %47 = fadd float %46, %45
  store float %47, float* %11, align 4
  br label %48

48:                                               ; preds = %38
  %49 = load i64, i64* %12, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %12, align 8
  br label %34

51:                                               ; preds = %34
  %52 = load float, float* %11, align 4
  %53 = load i64, i64* %7, align 8
  %54 = uitofp i64 %53 to float
  %55 = fdiv float %52, %54
  %56 = call i32 @sqrtf(float %55)
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %56, i32* %62, align 4
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %51, %32
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %17

68:                                               ; preds = %17
  ret void
}

declare dso_local i32 @sqrtf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
