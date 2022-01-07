; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_multiply_vol_data.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_multiply_vol_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float*** }

@AUDIO_OUTPUT_FRAMES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64, i64, float*)* @multiply_vol_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @multiply_vol_data(%struct.TYPE_3__* %0, i64 %1, i64 %2, float* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca float*, align 8
  %9 = alloca i64, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store float* %3, float** %8, align 8
  store i64 0, i64* %9, align 8
  br label %13

13:                                               ; preds = %45, %4
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %48

17:                                               ; preds = %13
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load float***, float**** %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds float**, float*** %20, i64 %21
  %23 = load float**, float*** %22, align 8
  %24 = load i64, i64* %9, align 8
  %25 = getelementptr inbounds float*, float** %23, i64 %24
  %26 = load float*, float** %25, align 8
  store float* %26, float** %10, align 8
  %27 = load float*, float** %10, align 8
  %28 = load i32, i32* @AUDIO_OUTPUT_FRAMES, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds float, float* %27, i64 %29
  store float* %30, float** %11, align 8
  %31 = load float*, float** %8, align 8
  store float* %31, float** %12, align 8
  br label %32

32:                                               ; preds = %36, %17
  %33 = load float*, float** %10, align 8
  %34 = load float*, float** %11, align 8
  %35 = icmp ult float* %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load float*, float** %12, align 8
  %38 = getelementptr inbounds float, float* %37, i32 1
  store float* %38, float** %12, align 8
  %39 = load float, float* %37, align 4
  %40 = load float*, float** %10, align 8
  %41 = getelementptr inbounds float, float* %40, i32 1
  store float* %41, float** %10, align 8
  %42 = load float, float* %40, align 4
  %43 = fmul float %42, %39
  store float %43, float* %40, align 4
  br label %32

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %9, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %9, align 8
  br label %13

48:                                               ; preds = %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
