; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgTextMetrics.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgTextMetrics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { float, i32 }
%struct.TYPE_7__ = type { i64, float, float, float, i32 }

@FONS_INVALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvgTextMetrics(%struct.TYPE_8__* %0, float* %1, float* %2, float* %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store float* %3, float** %8, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = call %struct.TYPE_7__* @nvg__getState(%struct.TYPE_8__* %12)
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %9, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %15 = call float @nvg__getFontScale(%struct.TYPE_7__* %14)
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load float, float* %17, align 4
  %19 = fmul float %15, %18
  store float %19, float* %10, align 4
  %20 = load float, float* %10, align 4
  %21 = fdiv float 1.000000e+00, %20
  store float %21, float* %11, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @FONS_INVALID, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  br label %100

28:                                               ; preds = %4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load float, float* %33, align 8
  %35 = load float, float* %10, align 4
  %36 = fmul float %34, %35
  %37 = call i32 @fonsSetSize(i32 %31, float %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  %43 = load float, float* %42, align 4
  %44 = load float, float* %10, align 4
  %45 = fmul float %43, %44
  %46 = call i32 @fonsSetSpacing(i32 %40, float %45)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 3
  %52 = load float, float* %51, align 8
  %53 = load float, float* %10, align 4
  %54 = fmul float %52, %53
  %55 = call i32 @fonsSetBlur(i32 %49, float %54)
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @fonsSetAlign(i32 %58, i32 %61)
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @fonsSetFont(i32 %65, i64 %68)
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load float*, float** %6, align 8
  %74 = load float*, float** %7, align 8
  %75 = load float*, float** %8, align 8
  %76 = call i32 @fonsVertMetrics(i32 %72, float* %73, float* %74, float* %75)
  %77 = load float*, float** %6, align 8
  %78 = icmp ne float* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %28
  %80 = load float, float* %11, align 4
  %81 = load float*, float** %6, align 8
  %82 = load float, float* %81, align 4
  %83 = fmul float %82, %80
  store float %83, float* %81, align 4
  br label %84

84:                                               ; preds = %79, %28
  %85 = load float*, float** %7, align 8
  %86 = icmp ne float* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load float, float* %11, align 4
  %89 = load float*, float** %7, align 8
  %90 = load float, float* %89, align 4
  %91 = fmul float %90, %88
  store float %91, float* %89, align 4
  br label %92

92:                                               ; preds = %87, %84
  %93 = load float*, float** %8, align 8
  %94 = icmp ne float* %93, null
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load float, float* %11, align 4
  %97 = load float*, float** %8, align 8
  %98 = load float, float* %97, align 4
  %99 = fmul float %98, %96
  store float %99, float* %97, align 4
  br label %100

100:                                              ; preds = %27, %95, %92
  ret void
}

declare dso_local %struct.TYPE_7__* @nvg__getState(%struct.TYPE_8__*) #1

declare dso_local float @nvg__getFontScale(%struct.TYPE_7__*) #1

declare dso_local i32 @fonsSetSize(i32, float) #1

declare dso_local i32 @fonsSetSpacing(i32, float) #1

declare dso_local i32 @fonsSetBlur(i32, float) #1

declare dso_local i32 @fonsSetAlign(i32, i32) #1

declare dso_local i32 @fonsSetFont(i32, i64) #1

declare dso_local i32 @fonsVertMetrics(i32, float*, float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
