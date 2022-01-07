; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_float_32_to_16.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_float_32_to_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (float*)* @float_32_to_16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @float_32_to_16(float* %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca float*, align 8
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  store float* %0, float** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load float*, float** %3, align 8
  %9 = load float, float* %8, align 4
  %10 = call float @llvm.fabs.f32(float %9)
  store float %10, float* %5, align 4
  %11 = load float*, float** %3, align 8
  %12 = load float, float* %11, align 4
  %13 = fcmp oeq float %12, 0.000000e+00
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i16 0, i16* %2, align 2
  br label %115

15:                                               ; preds = %1
  %16 = load float*, float** %3, align 8
  %17 = load float, float* %16, align 4
  %18 = call i64 @isnan(float %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i16 31745, i16* %2, align 2
  br label %115

21:                                               ; preds = %15
  %22 = load float*, float** %3, align 8
  %23 = load float, float* %22, align 4
  %24 = call i64 @isinf(float %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load float*, float** %3, align 8
  %28 = load float, float* %27, align 4
  %29 = fcmp olt float %28, 0.000000e+00
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 64512, i32 31744
  %32 = trunc i32 %31 to i16
  store i16 %32, i16* %2, align 2
  br label %115

33:                                               ; preds = %21
  %34 = load float, float* %5, align 4
  %35 = fcmp olt float %34, 1.024000e+03
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  br label %37

37:                                               ; preds = %42, %36
  %38 = load float, float* %5, align 4
  %39 = fmul float %38, 2.000000e+00
  store float %39, float* %5, align 4
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %37
  %43 = load float, float* %5, align 4
  %44 = fcmp olt float %43, 1.024000e+03
  br i1 %44, label %37, label %45

45:                                               ; preds = %42
  br label %60

46:                                               ; preds = %33
  %47 = load float, float* %5, align 4
  %48 = fcmp oge float %47, 2.048000e+03
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  br label %50

50:                                               ; preds = %55, %49
  %51 = load float, float* %5, align 4
  %52 = fdiv float %51, 2.000000e+00
  store float %52, float* %5, align 4
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %50
  %56 = load float, float* %5, align 4
  %57 = fcmp oge float %56, 2.048000e+03
  br i1 %57, label %50, label %58

58:                                               ; preds = %55
  br label %59

59:                                               ; preds = %58, %46
  br label %60

60:                                               ; preds = %59, %45
  %61 = load float, float* %5, align 4
  %62 = fptoui float %61 to i32
  store i32 %62, i32* %6, align 4
  %63 = load float, float* %5, align 4
  %64 = load i32, i32* %6, align 4
  %65 = uitofp i32 %64 to float
  %66 = fsub float %63, %65
  %67 = fcmp oge float %66, 5.000000e-01
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load i32, i32* %6, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %68, %60
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 10
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 15
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp sgt i32 %76, 30
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  store i16 31744, i16* %7, align 2
  br label %103

79:                                               ; preds = %71
  %80 = load i32, i32* %4, align 4
  %81 = icmp sle i32 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %79
  br label %83

83:                                               ; preds = %86, %82
  %84 = load i32, i32* %4, align 4
  %85 = icmp sle i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load i32, i32* %6, align 4
  %88 = lshr i32 %87, 1
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %4, align 4
  br label %83

91:                                               ; preds = %83
  %92 = load i32, i32* %6, align 4
  %93 = and i32 %92, 1023
  %94 = trunc i32 %93 to i16
  store i16 %94, i16* %7, align 2
  br label %102

95:                                               ; preds = %79
  %96 = load i32, i32* %4, align 4
  %97 = shl i32 %96, 10
  %98 = load i32, i32* %6, align 4
  %99 = and i32 %98, 1023
  %100 = or i32 %97, %99
  %101 = trunc i32 %100 to i16
  store i16 %101, i16* %7, align 2
  br label %102

102:                                              ; preds = %95, %91
  br label %103

103:                                              ; preds = %102, %78
  %104 = load float*, float** %3, align 8
  %105 = load float, float* %104, align 4
  %106 = fcmp olt float %105, 0.000000e+00
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 1, i32 0
  %109 = shl i32 %108, 15
  %110 = load i16, i16* %7, align 2
  %111 = zext i16 %110 to i32
  %112 = or i32 %111, %109
  %113 = trunc i32 %112 to i16
  store i16 %113, i16* %7, align 2
  %114 = load i16, i16* %7, align 2
  store i16 %114, i16* %2, align 2
  br label %115

115:                                              ; preds = %103, %26, %20, %14
  %116 = load i16, i16* %2, align 2
  ret i16 %116
}

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #1

declare dso_local i64 @isnan(float) #2

declare dso_local i64 @isinf(float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
