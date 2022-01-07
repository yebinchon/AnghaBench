; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_image.h_stbi__float_postprocess.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_image.h_stbi__float_postprocess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stbi__vertically_flip_on_load = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, i32*, i32*, i32*, i32)* @stbi__float_postprocess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stbi__float_postprocess(float* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  store float* %0, float** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %18 = load i64, i64* @stbi__vertically_flip_on_load, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %122

20:                                               ; preds = %5
  %21 = load float*, float** %6, align 8
  %22 = icmp ne float* %21, null
  br i1 %22, label %23, label %122

23:                                               ; preds = %20
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %11, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %10, align 4
  br label %35

32:                                               ; preds = %23
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %33, align 4
  br label %35

35:                                               ; preds = %32, %30
  %36 = phi i32 [ %31, %30 ], [ %34, %32 ]
  store i32 %36, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %37

37:                                               ; preds = %118, %35
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %12, align 4
  %40 = ashr i32 %39, 1
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %121

42:                                               ; preds = %37
  store i32 0, i32* %15, align 4
  br label %43

43:                                               ; preds = %114, %42
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %117

47:                                               ; preds = %43
  store i32 0, i32* %16, align 4
  br label %48

48:                                               ; preds = %110, %47
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %113

52:                                               ; preds = %48
  %53 = load float*, float** %6, align 8
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %11, align 4
  %56 = mul nsw i32 %54, %55
  %57 = load i32, i32* %15, align 4
  %58 = add nsw i32 %56, %57
  %59 = load i32, i32* %13, align 4
  %60 = mul nsw i32 %58, %59
  %61 = load i32, i32* %16, align 4
  %62 = add nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds float, float* %53, i64 %63
  %65 = load float, float* %64, align 4
  store float %65, float* %17, align 4
  %66 = load float*, float** %6, align 8
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %14, align 4
  %69 = sub nsw i32 %67, %68
  %70 = sub nsw i32 %69, 1
  %71 = load i32, i32* %11, align 4
  %72 = mul nsw i32 %70, %71
  %73 = load i32, i32* %15, align 4
  %74 = add nsw i32 %72, %73
  %75 = load i32, i32* %13, align 4
  %76 = mul nsw i32 %74, %75
  %77 = load i32, i32* %16, align 4
  %78 = add nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float, float* %66, i64 %79
  %81 = load float, float* %80, align 4
  %82 = load float*, float** %6, align 8
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* %11, align 4
  %85 = mul nsw i32 %83, %84
  %86 = load i32, i32* %15, align 4
  %87 = add nsw i32 %85, %86
  %88 = load i32, i32* %13, align 4
  %89 = mul nsw i32 %87, %88
  %90 = load i32, i32* %16, align 4
  %91 = add nsw i32 %89, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds float, float* %82, i64 %92
  store float %81, float* %93, align 4
  %94 = load float, float* %17, align 4
  %95 = load float*, float** %6, align 8
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %14, align 4
  %98 = sub nsw i32 %96, %97
  %99 = sub nsw i32 %98, 1
  %100 = load i32, i32* %11, align 4
  %101 = mul nsw i32 %99, %100
  %102 = load i32, i32* %15, align 4
  %103 = add nsw i32 %101, %102
  %104 = load i32, i32* %13, align 4
  %105 = mul nsw i32 %103, %104
  %106 = load i32, i32* %16, align 4
  %107 = add nsw i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds float, float* %95, i64 %108
  store float %94, float* %109, align 4
  br label %110

110:                                              ; preds = %52
  %111 = load i32, i32* %16, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %16, align 4
  br label %48

113:                                              ; preds = %48
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %15, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %15, align 4
  br label %43

117:                                              ; preds = %43
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %14, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %14, align 4
  br label %37

121:                                              ; preds = %37
  br label %122

122:                                              ; preds = %121, %20, %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
