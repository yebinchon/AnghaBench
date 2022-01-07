; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_multiply_output_audio.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_multiply_output_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float*** }

@AUDIO_OUTPUT_FRAMES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64, i64, float)* @multiply_output_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @multiply_output_audio(%struct.TYPE_3__* %0, i64 %1, i64 %2, float %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca float, align 4
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store float %3, float* %8, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load float***, float**** %12, align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds float**, float*** %13, i64 %14
  %16 = load float**, float*** %15, align 8
  %17 = getelementptr inbounds float*, float** %16, i64 0
  %18 = load float*, float** %17, align 8
  store float* %18, float** %9, align 8
  %19 = load float*, float** %9, align 8
  %20 = load i64, i64* @AUDIO_OUTPUT_FRAMES, align 8
  %21 = load i64, i64* %7, align 8
  %22 = mul i64 %20, %21
  %23 = getelementptr inbounds float, float* %19, i64 %22
  store float* %23, float** %10, align 8
  br label %24

24:                                               ; preds = %28, %4
  %25 = load float*, float** %9, align 8
  %26 = load float*, float** %10, align 8
  %27 = icmp ult float* %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load float, float* %8, align 4
  %30 = load float*, float** %9, align 8
  %31 = getelementptr inbounds float, float* %30, i32 1
  store float* %31, float** %9, align 8
  %32 = load float, float* %30, align 4
  %33 = fmul float %32, %29
  store float %33, float* %30, align 4
  br label %24

34:                                               ; preds = %24
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
