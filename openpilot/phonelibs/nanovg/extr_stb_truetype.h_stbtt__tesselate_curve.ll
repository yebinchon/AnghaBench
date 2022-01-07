; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_truetype.h_stbtt__tesselate_curve.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_truetype.h_stbtt__tesselate_curve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, float, float, float, float, float, float, float, i32)* @stbtt__tesselate_curve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stbtt__tesselate_curve(i32* %0, i32* %1, float %2, float %3, float %4, float %5, float %6, float %7, float %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca i32, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  store i32* %0, i32** %12, align 8
  store i32* %1, i32** %13, align 8
  store float %2, float* %14, align 4
  store float %3, float* %15, align 4
  store float %4, float* %16, align 4
  store float %5, float* %17, align 4
  store float %6, float* %18, align 4
  store float %7, float* %19, align 4
  store float %8, float* %20, align 4
  store i32 %9, i32* %21, align 4
  %26 = load float, float* %14, align 4
  %27 = load float, float* %16, align 4
  %28 = fmul float 2.000000e+00, %27
  %29 = fadd float %26, %28
  %30 = load float, float* %18, align 4
  %31 = fadd float %29, %30
  %32 = fdiv float %31, 4.000000e+00
  store float %32, float* %22, align 4
  %33 = load float, float* %15, align 4
  %34 = load float, float* %17, align 4
  %35 = fmul float 2.000000e+00, %34
  %36 = fadd float %33, %35
  %37 = load float, float* %19, align 4
  %38 = fadd float %36, %37
  %39 = fdiv float %38, 4.000000e+00
  store float %39, float* %23, align 4
  %40 = load float, float* %14, align 4
  %41 = load float, float* %18, align 4
  %42 = fadd float %40, %41
  %43 = fdiv float %42, 2.000000e+00
  %44 = load float, float* %22, align 4
  %45 = fsub float %43, %44
  store float %45, float* %24, align 4
  %46 = load float, float* %15, align 4
  %47 = load float, float* %19, align 4
  %48 = fadd float %46, %47
  %49 = fdiv float %48, 2.000000e+00
  %50 = load float, float* %23, align 4
  %51 = fsub float %49, %50
  store float %51, float* %25, align 4
  %52 = load i32, i32* %21, align 4
  %53 = icmp sgt i32 %52, 16
  br i1 %53, label %54, label %55

54:                                               ; preds = %10
  store i32 1, i32* %11, align 4
  br label %114

55:                                               ; preds = %10
  %56 = load float, float* %24, align 4
  %57 = load float, float* %24, align 4
  %58 = fmul float %56, %57
  %59 = load float, float* %25, align 4
  %60 = load float, float* %25, align 4
  %61 = fmul float %59, %60
  %62 = fadd float %58, %61
  %63 = load float, float* %20, align 4
  %64 = fcmp ogt float %62, %63
  br i1 %64, label %65, label %102

65:                                               ; preds = %55
  %66 = load i32*, i32** %12, align 8
  %67 = load i32*, i32** %13, align 8
  %68 = load float, float* %14, align 4
  %69 = load float, float* %15, align 4
  %70 = load float, float* %14, align 4
  %71 = load float, float* %16, align 4
  %72 = fadd float %70, %71
  %73 = fdiv float %72, 2.000000e+00
  %74 = load float, float* %15, align 4
  %75 = load float, float* %17, align 4
  %76 = fadd float %74, %75
  %77 = fdiv float %76, 2.000000e+00
  %78 = load float, float* %22, align 4
  %79 = load float, float* %23, align 4
  %80 = load float, float* %20, align 4
  %81 = load i32, i32* %21, align 4
  %82 = add nsw i32 %81, 1
  %83 = call i32 @stbtt__tesselate_curve(i32* %66, i32* %67, float %68, float %69, float %73, float %77, float %78, float %79, float %80, i32 %82)
  %84 = load i32*, i32** %12, align 8
  %85 = load i32*, i32** %13, align 8
  %86 = load float, float* %22, align 4
  %87 = load float, float* %23, align 4
  %88 = load float, float* %16, align 4
  %89 = load float, float* %18, align 4
  %90 = fadd float %88, %89
  %91 = fdiv float %90, 2.000000e+00
  %92 = load float, float* %17, align 4
  %93 = load float, float* %19, align 4
  %94 = fadd float %92, %93
  %95 = fdiv float %94, 2.000000e+00
  %96 = load float, float* %18, align 4
  %97 = load float, float* %19, align 4
  %98 = load float, float* %20, align 4
  %99 = load i32, i32* %21, align 4
  %100 = add nsw i32 %99, 1
  %101 = call i32 @stbtt__tesselate_curve(i32* %84, i32* %85, float %86, float %87, float %91, float %95, float %96, float %97, float %98, i32 %100)
  br label %113

102:                                              ; preds = %55
  %103 = load i32*, i32** %12, align 8
  %104 = load i32*, i32** %13, align 8
  %105 = load i32, i32* %104, align 4
  %106 = load float, float* %18, align 4
  %107 = load float, float* %19, align 4
  %108 = call i32 @stbtt__add_point(i32* %103, i32 %105, float %106, float %107)
  %109 = load i32*, i32** %13, align 8
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  %112 = load i32*, i32** %13, align 8
  store i32 %111, i32* %112, align 4
  br label %113

113:                                              ; preds = %102, %65
  store i32 1, i32* %11, align 4
  br label %114

114:                                              ; preds = %113, %54
  %115 = load i32, i32* %11, align 4
  ret i32 %115
}

declare dso_local i32 @stbtt__add_point(i32*, i32, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
