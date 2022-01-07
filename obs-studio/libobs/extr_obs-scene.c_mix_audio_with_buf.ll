; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_mix_audio_with_buf.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_mix_audio_with_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, float*, i64, i64)* @mix_audio_with_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mix_audio_with_buf(float* %0, float* %1, float* %2, i64 %3, i64 %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  store float* %0, float** %6, align 8
  store float* %1, float** %7, align 8
  store float* %2, float** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load float*, float** %6, align 8
  store float* %15, float** %11, align 8
  %16 = load float*, float** %8, align 8
  %17 = load i64, i64* %9, align 8
  %18 = getelementptr inbounds float, float* %16, i64 %17
  store float* %18, float** %12, align 8
  %19 = load float*, float** %7, align 8
  %20 = load i64, i64* %9, align 8
  %21 = getelementptr inbounds float, float* %19, i64 %20
  store float* %21, float** %13, align 8
  %22 = load float*, float** %13, align 8
  %23 = load i64, i64* %10, align 8
  %24 = getelementptr inbounds float, float* %22, i64 %23
  store float* %24, float** %14, align 8
  br label %25

25:                                               ; preds = %29, %5
  %26 = load float*, float** %13, align 8
  %27 = load float*, float** %14, align 8
  %28 = icmp ult float* %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %25
  %30 = load float*, float** %13, align 8
  %31 = getelementptr inbounds float, float* %30, i32 1
  store float* %31, float** %13, align 8
  %32 = load float, float* %30, align 4
  %33 = load float*, float** %12, align 8
  %34 = getelementptr inbounds float, float* %33, i32 1
  store float* %34, float** %12, align 8
  %35 = load float, float* %33, align 4
  %36 = fmul float %32, %35
  %37 = load float*, float** %11, align 8
  %38 = getelementptr inbounds float, float* %37, i32 1
  store float* %38, float** %11, align 8
  %39 = load float, float* %37, align 4
  %40 = fadd float %39, %36
  store float %40, float* %37, align 4
  br label %25

41:                                               ; preds = %25
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
