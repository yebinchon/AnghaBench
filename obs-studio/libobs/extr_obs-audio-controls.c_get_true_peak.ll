; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-audio-controls.c_get_true_peak.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-audio-controls.c_get_true_peak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (i32, float*, i64)* @get_true_peak to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @get_true_peak(i32 %0, float* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca float*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  store i32 %0, i32* %4, align 4
  store float* %1, float** %5, align 8
  store i64 %2, i64* %6, align 8
  %18 = call i32 @_mm_set_ps(float 0xBFC3F505E0000000, float 0x3FEDEF86A0000000, float 0x3FCDEF8480000000, float 0xBFBA9C0220000000)
  store i32 %18, i32* %7, align 4
  %19 = call i32 @_mm_set_ps(float 0xBFCBAD9F00000000, float 0x3FE837ED40000000, float 0x3FE0254820000000, float 0xBFC837EF60000000)
  store i32 %19, i32* %8, align 4
  %20 = call i32 @_mm_set_ps(float 0xBFC837EF60000000, float 0x3FE0254820000000, float 0x3FE837ED40000000, float 0xBFCBAD9F00000000)
  store i32 %20, i32* %9, align 4
  %21 = call i32 @_mm_set_ps(float 0xBFBA9C0220000000, float 0x3FCDEF8480000000, float 0x3FEDEF86A0000000, float 0xBFC3F505E0000000)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %12, align 4
  store i64 0, i64* %13, align 8
  br label %24

24:                                               ; preds = %95, %3
  %25 = load i64, i64* %13, align 8
  %26 = add i64 %25, 3
  %27 = load i64, i64* %6, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %98

29:                                               ; preds = %24
  %30 = load float*, float** %5, align 8
  %31 = load i64, i64* %13, align 8
  %32 = getelementptr inbounds float, float* %30, i64 %31
  %33 = call i32 @_mm_load_ps(float* %32)
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = call i32 @abs_ps(i32 %34)
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %16, align 4
  %38 = call i32 @_mm_max_ps(i32 %36, i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @SHIFT_RIGHT_2PS(i32 %39, i32 %40)
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @VECTOR_MATRIX_CROSS_PS(i32 %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %15, align 4
  %51 = call i32 @abs_ps(i32 %50)
  %52 = call i32 @_mm_max_ps(i32 %49, i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @SHIFT_RIGHT_2PS(i32 %53, i32 %54)
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @VECTOR_MATRIX_CROSS_PS(i32 %56, i32 %57, i32 %58, i32 %59, i32 %60, i32 %61)
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %15, align 4
  %65 = call i32 @abs_ps(i32 %64)
  %66 = call i32 @_mm_max_ps(i32 %63, i32 %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @SHIFT_RIGHT_2PS(i32 %67, i32 %68)
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @VECTOR_MATRIX_CROSS_PS(i32 %70, i32 %71, i32 %72, i32 %73, i32 %74, i32 %75)
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %15, align 4
  %79 = call i32 @abs_ps(i32 %78)
  %80 = call i32 @_mm_max_ps(i32 %77, i32 %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @SHIFT_RIGHT_2PS(i32 %81, i32 %82)
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @VECTOR_MATRIX_CROSS_PS(i32 %84, i32 %85, i32 %86, i32 %87, i32 %88, i32 %89)
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %15, align 4
  %93 = call i32 @abs_ps(i32 %92)
  %94 = call i32 @_mm_max_ps(i32 %91, i32 %93)
  store i32 %94, i32* %12, align 4
  br label %95

95:                                               ; preds = %29
  %96 = load i64, i64* %13, align 8
  %97 = add i64 %96, 4
  store i64 %97, i64* %13, align 8
  br label %24

98:                                               ; preds = %24
  %99 = load float, float* %17, align 4
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @hmax_ps(float %99, i32 %100)
  %102 = load float, float* %17, align 4
  ret float %102
}

declare dso_local i32 @_mm_set_ps(float, float, float, float) #1

declare dso_local i32 @_mm_load_ps(float*) #1

declare dso_local i32 @abs_ps(i32) #1

declare dso_local i32 @_mm_max_ps(i32, i32) #1

declare dso_local i32 @SHIFT_RIGHT_2PS(i32, i32) #1

declare dso_local i32 @VECTOR_MATRIX_CROSS_PS(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @hmax_ps(float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
