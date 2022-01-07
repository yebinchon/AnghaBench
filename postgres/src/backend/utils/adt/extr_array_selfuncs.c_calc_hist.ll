; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_array_selfuncs.c_calc_hist.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_array_selfuncs.c_calc_hist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float* (i32*, i32, i32)* @calc_hist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float* @calc_hist(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  store float 0.000000e+00, float* %10, align 4
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = trunc i64 %18 to i32
  %20 = call i64 @palloc(i32 %19)
  %21 = inttoptr i64 %20 to float*
  store float* %21, float** %7, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sitofp i32 %23 to float
  %25 = fdiv float 1.000000e+00, %24
  store float %25, float* %12, align 4
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %118, %3
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %121

30:                                               ; preds = %26
  store i32 0, i32* %13, align 4
  br label %31

31:                                               ; preds = %45, %30
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp sle i32 %40, %41
  br label %43

43:                                               ; preds = %35, %31
  %44 = phi i1 [ false, %31 ], [ %42, %35 ]
  br i1 %44, label %45, label %50

45:                                               ; preds = %43
  %46 = load i32, i32* %13, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %31

50:                                               ; preds = %43
  %51 = load i32, i32* %13, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %100

53:                                               ; preds = %50
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %71

57:                                               ; preds = %53
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %4, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %62, %68
  %70 = sitofp i32 %69 to float
  store float %70, float* %11, align 4
  br label %72

71:                                               ; preds = %53
  store float 0.000000e+00, float* %11, align 4
  br label %72

72:                                               ; preds = %71, %57
  %73 = load i32, i32* %13, align 4
  %74 = sub nsw i32 %73, 1
  %75 = sitofp i32 %74 to float
  store float %75, float* %14, align 4
  %76 = load float, float* %11, align 4
  %77 = fcmp ogt float %76, 0.000000e+00
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  %79 = load float, float* %11, align 4
  %80 = fdiv float 5.000000e-01, %79
  %81 = load float, float* %14, align 4
  %82 = fadd float %81, %80
  store float %82, float* %14, align 4
  br label %83

83:                                               ; preds = %78, %72
  %84 = load float, float* %10, align 4
  %85 = fcmp ogt float %84, 0.000000e+00
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load float, float* %10, align 4
  %88 = fdiv float 5.000000e-01, %87
  %89 = load float, float* %14, align 4
  %90 = fadd float %89, %88
  store float %90, float* %14, align 4
  br label %91

91:                                               ; preds = %86, %83
  %92 = load float, float* %12, align 4
  %93 = load float, float* %14, align 4
  %94 = fmul float %92, %93
  %95 = load float*, float** %7, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds float, float* %95, i64 %97
  store float %94, float* %98, align 4
  %99 = load float, float* %11, align 4
  store float %99, float* %10, align 4
  br label %117

100:                                              ; preds = %50
  %101 = load float, float* %10, align 4
  %102 = fcmp ogt float %101, 0.000000e+00
  br i1 %102, label %103, label %111

103:                                              ; preds = %100
  %104 = load float, float* %12, align 4
  %105 = load float, float* %10, align 4
  %106 = fdiv float %104, %105
  %107 = load float*, float** %7, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds float, float* %107, i64 %109
  store float %106, float* %110, align 4
  br label %116

111:                                              ; preds = %100
  %112 = load float*, float** %7, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds float, float* %112, i64 %114
  store float 0.000000e+00, float* %115, align 4
  br label %116

116:                                              ; preds = %111, %103
  br label %117

117:                                              ; preds = %116, %91
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %8, align 4
  br label %26

121:                                              ; preds = %26
  %122 = load float*, float** %7, align 8
  ret float* %122
}

declare dso_local i64 @palloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
