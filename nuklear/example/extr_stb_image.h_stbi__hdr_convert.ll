; ModuleID = '/home/carl/AnghaBench/nuklear/example/extr_stb_image.h_stbi__hdr_convert.c'
source_filename = "/home/carl/AnghaBench/nuklear/example/extr_stb_image.h_stbi__hdr_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, i32*, i32)* @stbi__hdr_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stbi__hdr_convert(float* %0, i32* %1, i32 %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  store float* %0, float** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 3
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %77

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 3
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %15, 136
  %17 = call i64 @ldexp(float 1.000000e+00, i32 %16)
  %18 = sitofp i64 %17 to float
  store float %18, float* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp sle i32 %19, 2
  br i1 %20, label %21, label %39

21:                                               ; preds = %12
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %24, %27
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %28, %31
  %33 = sitofp i32 %32 to float
  %34 = load float, float* %7, align 4
  %35 = fmul float %33, %34
  %36 = fdiv float %35, 3.000000e+00
  %37 = load float*, float** %4, align 8
  %38 = getelementptr inbounds float, float* %37, i64 0
  store float %36, float* %38, align 4
  br label %64

39:                                               ; preds = %12
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = sitofp i32 %42 to float
  %44 = load float, float* %7, align 4
  %45 = fmul float %43, %44
  %46 = load float*, float** %4, align 8
  %47 = getelementptr inbounds float, float* %46, i64 0
  store float %45, float* %47, align 4
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = sitofp i32 %50 to float
  %52 = load float, float* %7, align 4
  %53 = fmul float %51, %52
  %54 = load float*, float** %4, align 8
  %55 = getelementptr inbounds float, float* %54, i64 1
  store float %53, float* %55, align 4
  %56 = load i32*, i32** %5, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  %58 = load i32, i32* %57, align 4
  %59 = sitofp i32 %58 to float
  %60 = load float, float* %7, align 4
  %61 = fmul float %59, %60
  %62 = load float*, float** %4, align 8
  %63 = getelementptr inbounds float, float* %62, i64 2
  store float %61, float* %63, align 4
  br label %64

64:                                               ; preds = %39, %21
  %65 = load i32, i32* %6, align 4
  %66 = icmp eq i32 %65, 2
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load float*, float** %4, align 8
  %69 = getelementptr inbounds float, float* %68, i64 1
  store float 1.000000e+00, float* %69, align 4
  br label %70

70:                                               ; preds = %67, %64
  %71 = load i32, i32* %6, align 4
  %72 = icmp eq i32 %71, 4
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load float*, float** %4, align 8
  %75 = getelementptr inbounds float, float* %74, i64 3
  store float 1.000000e+00, float* %75, align 4
  br label %76

76:                                               ; preds = %73, %70
  br label %96

77:                                               ; preds = %3
  %78 = load i32, i32* %6, align 4
  switch i32 %78, label %95 [
    i32 4, label %79
    i32 3, label %82
    i32 2, label %89
    i32 1, label %92
  ]

79:                                               ; preds = %77
  %80 = load float*, float** %4, align 8
  %81 = getelementptr inbounds float, float* %80, i64 3
  store float 1.000000e+00, float* %81, align 4
  br label %82

82:                                               ; preds = %77, %79
  %83 = load float*, float** %4, align 8
  %84 = getelementptr inbounds float, float* %83, i64 2
  store float 0.000000e+00, float* %84, align 4
  %85 = load float*, float** %4, align 8
  %86 = getelementptr inbounds float, float* %85, i64 1
  store float 0.000000e+00, float* %86, align 4
  %87 = load float*, float** %4, align 8
  %88 = getelementptr inbounds float, float* %87, i64 0
  store float 0.000000e+00, float* %88, align 4
  br label %95

89:                                               ; preds = %77
  %90 = load float*, float** %4, align 8
  %91 = getelementptr inbounds float, float* %90, i64 1
  store float 1.000000e+00, float* %91, align 4
  br label %92

92:                                               ; preds = %77, %89
  %93 = load float*, float** %4, align 8
  %94 = getelementptr inbounds float, float* %93, i64 0
  store float 0.000000e+00, float* %94, align 4
  br label %95

95:                                               ; preds = %77, %92, %82
  br label %96

96:                                               ; preds = %95, %76
  ret void
}

declare dso_local i64 @ldexp(float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
