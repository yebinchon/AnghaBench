; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_safety.h_interpolate.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_safety.h_interpolate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lookup_t = type { float*, float* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @interpolate(float* %0, float* %1, float %2) #0 {
  %4 = alloca %struct.lookup_t, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = bitcast %struct.lookup_t* %4 to { float*, float* }*
  %14 = getelementptr inbounds { float*, float* }, { float*, float* }* %13, i32 0, i32 0
  store float* %0, float** %14, align 8
  %15 = getelementptr inbounds { float*, float* }, { float*, float* }* %13, i32 0, i32 1
  store float* %1, float** %15, align 8
  store float %2, float* %5, align 4
  store i32 2, i32* %6, align 4
  %16 = getelementptr inbounds %struct.lookup_t, %struct.lookup_t* %4, i32 0, i32 0
  %17 = load float*, float** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds float, float* %17, i64 %20
  %22 = load float, float* %21, align 4
  store float %22, float* %7, align 4
  %23 = load float, float* %5, align 4
  %24 = getelementptr inbounds %struct.lookup_t, %struct.lookup_t* %4, i32 0, i32 1
  %25 = load float*, float** %24, align 8
  %26 = getelementptr inbounds float, float* %25, i64 0
  %27 = load float, float* %26, align 4
  %28 = fcmp ole float %23, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.lookup_t, %struct.lookup_t* %4, i32 0, i32 0
  %31 = load float*, float** %30, align 8
  %32 = getelementptr inbounds float, float* %31, i64 0
  %33 = load float, float* %32, align 4
  store float %33, float* %7, align 4
  br label %100

34:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %96, %34
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %6, align 4
  %38 = sub nsw i32 %37, 1
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %99

40:                                               ; preds = %35
  %41 = load float, float* %5, align 4
  %42 = getelementptr inbounds %struct.lookup_t, %struct.lookup_t* %4, i32 0, i32 1
  %43 = load float*, float** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float, float* %43, i64 %46
  %48 = load float, float* %47, align 4
  %49 = fcmp olt float %41, %48
  br i1 %49, label %50, label %95

50:                                               ; preds = %40
  %51 = getelementptr inbounds %struct.lookup_t, %struct.lookup_t* %4, i32 0, i32 1
  %52 = load float*, float** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float, float* %52, i64 %54
  %56 = load float, float* %55, align 4
  store float %56, float* %9, align 4
  %57 = getelementptr inbounds %struct.lookup_t, %struct.lookup_t* %4, i32 0, i32 0
  %58 = load float*, float** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds float, float* %58, i64 %60
  %62 = load float, float* %61, align 4
  store float %62, float* %10, align 4
  %63 = getelementptr inbounds %struct.lookup_t, %struct.lookup_t* %4, i32 0, i32 1
  %64 = load float*, float** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds float, float* %64, i64 %67
  %69 = load float, float* %68, align 4
  %70 = load float, float* %9, align 4
  %71 = fsub float %69, %70
  store float %71, float* %11, align 4
  %72 = getelementptr inbounds %struct.lookup_t, %struct.lookup_t* %4, i32 0, i32 0
  %73 = load float*, float** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds float, float* %73, i64 %76
  %78 = load float, float* %77, align 4
  %79 = load float, float* %10, align 4
  %80 = fsub float %78, %79
  store float %80, float* %12, align 4
  %81 = load float, float* %11, align 4
  %82 = fpext float %81 to double
  %83 = fcmp ole double %82, 0.000000e+00
  br i1 %83, label %84, label %85

84:                                               ; preds = %50
  store float 0x3F1A36E2E0000000, float* %11, align 4
  br label %85

85:                                               ; preds = %84, %50
  %86 = load float, float* %12, align 4
  %87 = load float, float* %5, align 4
  %88 = load float, float* %9, align 4
  %89 = fsub float %87, %88
  %90 = fmul float %86, %89
  %91 = load float, float* %11, align 4
  %92 = fdiv float %90, %91
  %93 = load float, float* %10, align 4
  %94 = fadd float %92, %93
  store float %94, float* %7, align 4
  br label %99

95:                                               ; preds = %40
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %8, align 4
  br label %35

99:                                               ; preds = %85, %35
  br label %100

100:                                              ; preds = %99, %29
  %101 = load float, float* %7, align 4
  ret float %101
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
