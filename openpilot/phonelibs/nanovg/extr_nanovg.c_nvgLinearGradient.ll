; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgLinearGradient.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgLinearGradient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float*, float*, float, i8*, i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvgLinearGradient(%struct.TYPE_4__* noalias sret %0, i32* %1, float %2, float %3, float %4, float %5, i8* %6, i8* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  store i32* %1, i32** %9, align 8
  store float %2, float* %10, align 4
  store float %3, float* %11, align 4
  store float %4, float* %12, align 4
  store float %5, float* %13, align 4
  store i8* %6, i8** %14, align 8
  store i8* %7, i8** %15, align 8
  store float 1.000000e+05, float* %19, align 4
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @NVG_NOTUSED(i32* %20)
  %22 = call i32 @memset(%struct.TYPE_4__* %0, i32 0, i32 48)
  %23 = load float, float* %12, align 4
  %24 = load float, float* %10, align 4
  %25 = fsub float %23, %24
  store float %25, float* %16, align 4
  %26 = load float, float* %13, align 4
  %27 = load float, float* %11, align 4
  %28 = fsub float %26, %27
  store float %28, float* %17, align 4
  %29 = load float, float* %16, align 4
  %30 = load float, float* %16, align 4
  %31 = fmul float %29, %30
  %32 = load float, float* %17, align 4
  %33 = load float, float* %17, align 4
  %34 = fmul float %32, %33
  %35 = fadd float %31, %34
  %36 = call float @sqrtf(float %35) #3
  store float %36, float* %18, align 4
  %37 = load float, float* %18, align 4
  %38 = fcmp ogt float %37, 0x3F1A36E2E0000000
  br i1 %38, label %39, label %46

39:                                               ; preds = %8
  %40 = load float, float* %18, align 4
  %41 = load float, float* %16, align 4
  %42 = fdiv float %41, %40
  store float %42, float* %16, align 4
  %43 = load float, float* %18, align 4
  %44 = load float, float* %17, align 4
  %45 = fdiv float %44, %43
  store float %45, float* %17, align 4
  br label %47

46:                                               ; preds = %8
  store float 0.000000e+00, float* %16, align 4
  store float 1.000000e+00, float* %17, align 4
  br label %47

47:                                               ; preds = %46, %39
  %48 = load float, float* %17, align 4
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 0
  %50 = load float*, float** %49, align 8
  %51 = getelementptr inbounds float, float* %50, i64 0
  store float %48, float* %51, align 4
  %52 = load float, float* %16, align 4
  %53 = fneg float %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 0
  %55 = load float*, float** %54, align 8
  %56 = getelementptr inbounds float, float* %55, i64 1
  store float %53, float* %56, align 4
  %57 = load float, float* %16, align 4
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 0
  %59 = load float*, float** %58, align 8
  %60 = getelementptr inbounds float, float* %59, i64 2
  store float %57, float* %60, align 4
  %61 = load float, float* %17, align 4
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 0
  %63 = load float*, float** %62, align 8
  %64 = getelementptr inbounds float, float* %63, i64 3
  store float %61, float* %64, align 4
  %65 = load float, float* %10, align 4
  %66 = load float, float* %16, align 4
  %67 = fmul float %66, 1.000000e+05
  %68 = fsub float %65, %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 0
  %70 = load float*, float** %69, align 8
  %71 = getelementptr inbounds float, float* %70, i64 4
  store float %68, float* %71, align 4
  %72 = load float, float* %11, align 4
  %73 = load float, float* %17, align 4
  %74 = fmul float %73, 1.000000e+05
  %75 = fsub float %72, %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 0
  %77 = load float*, float** %76, align 8
  %78 = getelementptr inbounds float, float* %77, i64 5
  store float %75, float* %78, align 4
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 1
  %80 = load float*, float** %79, align 8
  %81 = getelementptr inbounds float, float* %80, i64 0
  store float 1.000000e+05, float* %81, align 4
  %82 = load float, float* %18, align 4
  %83 = fmul float %82, 5.000000e-01
  %84 = fadd float 1.000000e+05, %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 1
  %86 = load float*, float** %85, align 8
  %87 = getelementptr inbounds float, float* %86, i64 1
  store float %84, float* %87, align 4
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 2
  store float 0.000000e+00, float* %88, align 8
  %89 = load float, float* %18, align 4
  %90 = call i32 @nvg__maxf(float 1.000000e+00, float %89)
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 5
  store i32 %90, i32* %91, align 8
  %92 = load i8*, i8** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 4
  store i8* %92, i8** %93, align 8
  %94 = load i8*, i8** %15, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 3
  store i8* %94, i8** %95, align 8
  ret void
}

declare dso_local i32 @NVG_NOTUSED(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #2

declare dso_local i32 @nvg__maxf(float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
