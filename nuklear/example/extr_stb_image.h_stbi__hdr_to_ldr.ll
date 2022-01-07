; ModuleID = '/home/carl/AnghaBench/nuklear/example/extr_stb_image.h_stbi__hdr_to_ldr.c'
source_filename = "/home/carl/AnghaBench/nuklear/example/extr_stb_image.h_stbi__hdr_to_ldr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"outofmem\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@stbi__h2l_scale_i = common dso_local global float 0.000000e+00, align 4
@stbi__h2l_gamma_i = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (float*, i32, i32, i32)* @stbi__hdr_to_ldr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @stbi__hdr_to_ldr(float* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  store float* %0, float** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = mul nsw i32 %16, %17
  %19 = load i32, i32* %9, align 4
  %20 = mul nsw i32 %18, %19
  %21 = call i64 @stbi__malloc(i32 %20)
  %22 = inttoptr i64 %21 to i64*
  store i64* %22, i64** %13, align 8
  %23 = load i64*, i64** %13, align 8
  %24 = icmp eq i64* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = load float*, float** %6, align 8
  %27 = call i32 @STBI_FREE(float* %26)
  %28 = call i64* @stbi__errpuc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i64* %28, i64** %5, align 8
  br label %130

29:                                               ; preds = %4
  %30 = load i32, i32* %9, align 4
  %31 = and i32 %30, 1
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %12, align 4
  br label %38

35:                                               ; preds = %29
  %36 = load i32, i32* %9, align 4
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %12, align 4
  br label %38

38:                                               ; preds = %35, %33
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %123, %38
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = mul nsw i32 %41, %42
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %126

45:                                               ; preds = %39
  store i32 0, i32* %11, align 4
  br label %46

46:                                               ; preds = %85, %45
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %88

50:                                               ; preds = %46
  %51 = load float*, float** %6, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %9, align 4
  %54 = mul nsw i32 %52, %53
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float, float* %51, i64 %57
  %59 = load float, float* %58, align 4
  %60 = load float, float* @stbi__h2l_scale_i, align 4
  %61 = fmul float %59, %60
  %62 = load i32, i32* @stbi__h2l_gamma_i, align 4
  %63 = call i64 @pow(float %61, i32 %62)
  %64 = sitofp i64 %63 to float
  %65 = fmul float %64, 2.550000e+02
  %66 = fadd float %65, 5.000000e-01
  store float %66, float* %14, align 4
  %67 = load float, float* %14, align 4
  %68 = fcmp olt float %67, 0.000000e+00
  br i1 %68, label %69, label %70

69:                                               ; preds = %50
  store float 0.000000e+00, float* %14, align 4
  br label %70

70:                                               ; preds = %69, %50
  %71 = load float, float* %14, align 4
  %72 = fcmp ogt float %71, 2.550000e+02
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store float 2.550000e+02, float* %14, align 4
  br label %74

74:                                               ; preds = %73, %70
  %75 = load float, float* %14, align 4
  %76 = call i64 @stbi__float2int(float %75)
  %77 = load i64*, i64** %13, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %9, align 4
  %80 = mul nsw i32 %78, %79
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %77, i64 %83
  store i64 %76, i64* %84, align 8
  br label %85

85:                                               ; preds = %74
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %11, align 4
  br label %46

88:                                               ; preds = %46
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %122

92:                                               ; preds = %88
  %93 = load float*, float** %6, align 8
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %9, align 4
  %96 = mul nsw i32 %94, %95
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds float, float* %93, i64 %99
  %101 = load float, float* %100, align 4
  %102 = fmul float %101, 2.550000e+02
  %103 = fadd float %102, 5.000000e-01
  store float %103, float* %15, align 4
  %104 = load float, float* %15, align 4
  %105 = fcmp olt float %104, 0.000000e+00
  br i1 %105, label %106, label %107

106:                                              ; preds = %92
  store float 0.000000e+00, float* %15, align 4
  br label %107

107:                                              ; preds = %106, %92
  %108 = load float, float* %15, align 4
  %109 = fcmp ogt float %108, 2.550000e+02
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  store float 2.550000e+02, float* %15, align 4
  br label %111

111:                                              ; preds = %110, %107
  %112 = load float, float* %15, align 4
  %113 = call i64 @stbi__float2int(float %112)
  %114 = load i64*, i64** %13, align 8
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %9, align 4
  %117 = mul nsw i32 %115, %116
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %117, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %114, i64 %120
  store i64 %113, i64* %121, align 8
  br label %122

122:                                              ; preds = %111, %88
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  br label %39

126:                                              ; preds = %39
  %127 = load float*, float** %6, align 8
  %128 = call i32 @STBI_FREE(float* %127)
  %129 = load i64*, i64** %13, align 8
  store i64* %129, i64** %5, align 8
  br label %130

130:                                              ; preds = %126, %25
  %131 = load i64*, i64** %5, align 8
  ret i64* %131
}

declare dso_local i64 @stbi__malloc(i32) #1

declare dso_local i32 @STBI_FREE(float*) #1

declare dso_local i64* @stbi__errpuc(i8*, i8*) #1

declare dso_local i64 @pow(float, i32) #1

declare dso_local i64 @stbi__float2int(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
