; ModuleID = '/home/carl/AnghaBench/mpv/audio/filter/extr_af_scaletempo.c_output_overlap_float.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/filter/extr_af_scaletempo.c_output_overlap_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priv = type { float*, float*, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.priv*, i8*, i32)* @output_overlap_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_overlap_float(%struct.priv* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.priv*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  store %struct.priv* %0, %struct.priv** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to float*
  store float* %13, float** %7, align 8
  %14 = load %struct.priv*, %struct.priv** %4, align 8
  %15 = getelementptr inbounds %struct.priv, %struct.priv* %14, i32 0, i32 0
  %16 = load float*, float** %15, align 8
  store float* %16, float** %8, align 8
  %17 = load %struct.priv*, %struct.priv** %4, align 8
  %18 = getelementptr inbounds %struct.priv, %struct.priv* %17, i32 0, i32 1
  %19 = load float*, float** %18, align 8
  store float* %19, float** %9, align 8
  %20 = load %struct.priv*, %struct.priv** %4, align 8
  %21 = getelementptr inbounds %struct.priv, %struct.priv* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = inttoptr i64 %25 to float*
  store float* %26, float** %10, align 8
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %51, %3
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.priv*, %struct.priv** %4, align 8
  %30 = getelementptr inbounds %struct.priv, %struct.priv* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %54

33:                                               ; preds = %27
  %34 = load float*, float** %9, align 8
  %35 = load float, float* %34, align 4
  %36 = load float*, float** %8, align 8
  %37 = getelementptr inbounds float, float* %36, i32 1
  store float* %37, float** %8, align 8
  %38 = load float, float* %36, align 4
  %39 = load float*, float** %9, align 8
  %40 = load float, float* %39, align 4
  %41 = load float*, float** %10, align 8
  %42 = getelementptr inbounds float, float* %41, i32 1
  store float* %42, float** %10, align 8
  %43 = load float, float* %41, align 4
  %44 = fsub float %40, %43
  %45 = fmul float %38, %44
  %46 = fsub float %35, %45
  %47 = load float*, float** %7, align 8
  %48 = getelementptr inbounds float, float* %47, i32 1
  store float* %48, float** %7, align 8
  store float %46, float* %47, align 4
  %49 = load float*, float** %9, align 8
  %50 = getelementptr inbounds float, float* %49, i32 1
  store float* %50, float** %9, align 8
  br label %51

51:                                               ; preds = %33
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %11, align 4
  br label %27

54:                                               ; preds = %27
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
