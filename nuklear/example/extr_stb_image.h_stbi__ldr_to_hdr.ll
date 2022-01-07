; ModuleID = '/home/carl/AnghaBench/nuklear/example/extr_stb_image.h_stbi__ldr_to_hdr.c'
source_filename = "/home/carl/AnghaBench/nuklear/example/extr_stb_image.h_stbi__ldr_to_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"outofmem\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@stbi__l2h_gamma = common dso_local global i32 0, align 4
@stbi__l2h_scale = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float* (float*, i32, i32, i32)* @stbi__ldr_to_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float* @stbi__ldr_to_hdr(float* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  store float* %0, float** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = mul nsw i32 %14, %15
  %17 = load i32, i32* %9, align 4
  %18 = mul nsw i32 %16, %17
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = trunc i64 %20 to i32
  %22 = call i64 @stbi__malloc(i32 %21)
  %23 = inttoptr i64 %22 to float*
  store float* %23, float** %13, align 8
  %24 = load float*, float** %13, align 8
  %25 = icmp eq float* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %4
  %27 = load float*, float** %6, align 8
  %28 = call i32 @STBI_FREE(float* %27)
  %29 = call float* @stbi__errpf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store float* %29, float** %5, align 8
  br label %109

30:                                               ; preds = %4
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, 1
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %12, align 4
  br label %39

36:                                               ; preds = %30
  %37 = load i32, i32* %9, align 4
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %12, align 4
  br label %39

39:                                               ; preds = %36, %34
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %102, %39
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = mul nsw i32 %42, %43
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %105

46:                                               ; preds = %40
  store i32 0, i32* %11, align 4
  br label %47

47:                                               ; preds = %75, %46
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %78

51:                                               ; preds = %47
  %52 = load float*, float** %6, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %9, align 4
  %55 = mul nsw i32 %53, %54
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds float, float* %52, i64 %58
  %60 = load float, float* %59, align 4
  %61 = fdiv float %60, 2.550000e+02
  %62 = load i32, i32* @stbi__l2h_gamma, align 4
  %63 = call i32 @pow(float %61, i32 %62)
  %64 = load i32, i32* @stbi__l2h_scale, align 4
  %65 = mul nsw i32 %63, %64
  %66 = sitofp i32 %65 to float
  %67 = load float*, float** %13, align 8
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %9, align 4
  %70 = mul nsw i32 %68, %69
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds float, float* %67, i64 %73
  store float %66, float* %74, align 4
  br label %75

75:                                               ; preds = %51
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %11, align 4
  br label %47

78:                                               ; preds = %47
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %101

82:                                               ; preds = %78
  %83 = load float*, float** %6, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %9, align 4
  %86 = mul nsw i32 %84, %85
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %86, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds float, float* %83, i64 %89
  %91 = load float, float* %90, align 4
  %92 = fdiv float %91, 2.550000e+02
  %93 = load float*, float** %13, align 8
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %9, align 4
  %96 = mul nsw i32 %94, %95
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds float, float* %93, i64 %99
  store float %92, float* %100, align 4
  br label %101

101:                                              ; preds = %82, %78
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %10, align 4
  br label %40

105:                                              ; preds = %40
  %106 = load float*, float** %6, align 8
  %107 = call i32 @STBI_FREE(float* %106)
  %108 = load float*, float** %13, align 8
  store float* %108, float** %5, align 8
  br label %109

109:                                              ; preds = %105, %26
  %110 = load float*, float** %5, align 8
  ret float* %110
}

declare dso_local i64 @stbi__malloc(i32) #1

declare dso_local i32 @STBI_FREE(float*) #1

declare dso_local float* @stbi__errpf(i8*, i8*) #1

declare dso_local i32 @pow(float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
