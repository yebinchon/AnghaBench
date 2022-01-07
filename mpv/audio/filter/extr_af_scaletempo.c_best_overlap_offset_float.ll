; ModuleID = '/home/carl/AnghaBench/mpv/audio/filter/extr_af_scaletempo.c_best_overlap_offset_float.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/filter/extr_af_scaletempo.c_best_overlap_offset_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priv = type { float*, float*, i32, float*, i32, i32, i64 }

@INT_MIN = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.priv*)* @best_overlap_offset_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @best_overlap_offset_float(%struct.priv* %0) #0 {
  %2 = alloca %struct.priv*, align 8
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  store %struct.priv* %0, %struct.priv** %2, align 8
  %14 = load float, float* @INT_MIN, align 4
  store float %14, float* %3, align 4
  store i32 0, i32* %4, align 4
  %15 = load %struct.priv*, %struct.priv** %2, align 8
  %16 = getelementptr inbounds %struct.priv, %struct.priv* %15, i32 0, i32 0
  %17 = load float*, float** %16, align 8
  store float* %17, float** %5, align 8
  %18 = load %struct.priv*, %struct.priv** %2, align 8
  %19 = getelementptr inbounds %struct.priv, %struct.priv* %18, i32 0, i32 1
  %20 = load float*, float** %19, align 8
  store float* %20, float** %6, align 8
  %21 = load %struct.priv*, %struct.priv** %2, align 8
  %22 = getelementptr inbounds %struct.priv, %struct.priv* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load float*, float** %6, align 8
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds float, float* %24, i64 %25
  store float* %26, float** %6, align 8
  %27 = load %struct.priv*, %struct.priv** %2, align 8
  %28 = getelementptr inbounds %struct.priv, %struct.priv* %27, i32 0, i32 3
  %29 = load float*, float** %28, align 8
  store float* %29, float** %7, align 8
  %30 = load %struct.priv*, %struct.priv** %2, align 8
  %31 = getelementptr inbounds %struct.priv, %struct.priv* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %49, %1
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.priv*, %struct.priv** %2, align 8
  %36 = getelementptr inbounds %struct.priv, %struct.priv* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %33
  %40 = load float*, float** %5, align 8
  %41 = getelementptr inbounds float, float* %40, i32 1
  store float* %41, float** %5, align 8
  %42 = load float, float* %40, align 4
  %43 = load float*, float** %6, align 8
  %44 = getelementptr inbounds float, float* %43, i32 1
  store float* %44, float** %6, align 8
  %45 = load float, float* %43, align 4
  %46 = fmul float %42, %45
  %47 = load float*, float** %7, align 8
  %48 = getelementptr inbounds float, float* %47, i32 1
  store float* %48, float** %7, align 8
  store float %46, float* %47, align 4
  br label %49

49:                                               ; preds = %39
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %33

52:                                               ; preds = %33
  %53 = load %struct.priv*, %struct.priv** %2, align 8
  %54 = getelementptr inbounds %struct.priv, %struct.priv* %53, i32 0, i32 6
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to float*
  %57 = load %struct.priv*, %struct.priv** %2, align 8
  %58 = getelementptr inbounds %struct.priv, %struct.priv* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds float, float* %56, i64 %60
  store float* %61, float** %9, align 8
  store i32 0, i32* %10, align 4
  br label %62

62:                                               ; preds = %109, %52
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.priv*, %struct.priv** %2, align 8
  %65 = getelementptr inbounds %struct.priv, %struct.priv* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %112

68:                                               ; preds = %62
  store float 0.000000e+00, float* %11, align 4
  %69 = load float*, float** %9, align 8
  store float* %69, float** %12, align 8
  %70 = load %struct.priv*, %struct.priv** %2, align 8
  %71 = getelementptr inbounds %struct.priv, %struct.priv* %70, i32 0, i32 3
  %72 = load float*, float** %71, align 8
  store float* %72, float** %7, align 8
  %73 = load %struct.priv*, %struct.priv** %2, align 8
  %74 = getelementptr inbounds %struct.priv, %struct.priv* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %13, align 4
  br label %76

76:                                               ; preds = %92, %68
  %77 = load i32, i32* %13, align 4
  %78 = load %struct.priv*, %struct.priv** %2, align 8
  %79 = getelementptr inbounds %struct.priv, %struct.priv* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %95

82:                                               ; preds = %76
  %83 = load float*, float** %7, align 8
  %84 = getelementptr inbounds float, float* %83, i32 1
  store float* %84, float** %7, align 8
  %85 = load float, float* %83, align 4
  %86 = load float*, float** %12, align 8
  %87 = getelementptr inbounds float, float* %86, i32 1
  store float* %87, float** %12, align 8
  %88 = load float, float* %86, align 4
  %89 = fmul float %85, %88
  %90 = load float, float* %11, align 4
  %91 = fadd float %90, %89
  store float %91, float* %11, align 4
  br label %92

92:                                               ; preds = %82
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %13, align 4
  br label %76

95:                                               ; preds = %76
  %96 = load float, float* %11, align 4
  %97 = load float, float* %3, align 4
  %98 = fcmp ogt float %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load float, float* %11, align 4
  store float %100, float* %3, align 4
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %99, %95
  %103 = load %struct.priv*, %struct.priv** %2, align 8
  %104 = getelementptr inbounds %struct.priv, %struct.priv* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load float*, float** %9, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds float, float* %106, i64 %107
  store float* %108, float** %9, align 8
  br label %109

109:                                              ; preds = %102
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %10, align 4
  br label %62

112:                                              ; preds = %62
  %113 = load i32, i32* %4, align 4
  %114 = mul nsw i32 %113, 4
  %115 = load %struct.priv*, %struct.priv** %2, align 8
  %116 = getelementptr inbounds %struct.priv, %struct.priv* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = mul nsw i32 %114, %117
  ret i32 %118
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
