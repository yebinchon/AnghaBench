; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgTextBounds.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgTextBounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { float, i32 }
%struct.TYPE_7__ = type { i64, float, float, float, i32 }

@FONS_INVALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @nvgTextBounds(%struct.TYPE_8__* %0, float %1, float %2, i8* %3, i8* %4, float* %5) #0 {
  %7 = alloca float, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca float*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store float %1, float* %9, align 4
  store float %2, float* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store float* %5, float** %13, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %19 = call %struct.TYPE_7__* @nvg__getState(%struct.TYPE_8__* %18)
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %14, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %21 = call float @nvg__getFontScale(%struct.TYPE_7__* %20)
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load float, float* %23, align 4
  %25 = fmul float %21, %24
  store float %25, float* %15, align 4
  %26 = load float, float* %15, align 4
  %27 = fdiv float 1.000000e+00, %26
  store float %27, float* %16, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @FONS_INVALID, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %6
  store float 0.000000e+00, float* %7, align 4
  br label %127

34:                                               ; preds = %6
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load float, float* %39, align 8
  %41 = load float, float* %15, align 4
  %42 = fmul float %40, %41
  %43 = call i32 @fonsSetSize(i32 %37, float %42)
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  %49 = load float, float* %48, align 4
  %50 = load float, float* %15, align 4
  %51 = fmul float %49, %50
  %52 = call i32 @fonsSetSpacing(i32 %46, float %51)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 3
  %58 = load float, float* %57, align 8
  %59 = load float, float* %15, align 4
  %60 = fmul float %58, %59
  %61 = call i32 @fonsSetBlur(i32 %55, float %60)
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @fonsSetAlign(i32 %64, i32 %67)
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @fonsSetFont(i32 %71, i64 %74)
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load float, float* %9, align 4
  %80 = load float, float* %15, align 4
  %81 = fmul float %79, %80
  %82 = load float, float* %10, align 4
  %83 = load float, float* %15, align 4
  %84 = fmul float %82, %83
  %85 = load i8*, i8** %11, align 8
  %86 = load i8*, i8** %12, align 8
  %87 = load float*, float** %13, align 8
  %88 = call float @fonsTextBounds(i32 %78, float %81, float %84, i8* %85, i8* %86, float* %87)
  store float %88, float* %17, align 4
  %89 = load float*, float** %13, align 8
  %90 = icmp ne float* %89, null
  br i1 %90, label %91, label %123

91:                                               ; preds = %34
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load float, float* %10, align 4
  %96 = load float, float* %15, align 4
  %97 = fmul float %95, %96
  %98 = load float*, float** %13, align 8
  %99 = getelementptr inbounds float, float* %98, i64 1
  %100 = load float*, float** %13, align 8
  %101 = getelementptr inbounds float, float* %100, i64 3
  %102 = call i32 @fonsLineBounds(i32 %94, float %97, float* %99, float* %101)
  %103 = load float, float* %16, align 4
  %104 = load float*, float** %13, align 8
  %105 = getelementptr inbounds float, float* %104, i64 0
  %106 = load float, float* %105, align 4
  %107 = fmul float %106, %103
  store float %107, float* %105, align 4
  %108 = load float, float* %16, align 4
  %109 = load float*, float** %13, align 8
  %110 = getelementptr inbounds float, float* %109, i64 1
  %111 = load float, float* %110, align 4
  %112 = fmul float %111, %108
  store float %112, float* %110, align 4
  %113 = load float, float* %16, align 4
  %114 = load float*, float** %13, align 8
  %115 = getelementptr inbounds float, float* %114, i64 2
  %116 = load float, float* %115, align 4
  %117 = fmul float %116, %113
  store float %117, float* %115, align 4
  %118 = load float, float* %16, align 4
  %119 = load float*, float** %13, align 8
  %120 = getelementptr inbounds float, float* %119, i64 3
  %121 = load float, float* %120, align 4
  %122 = fmul float %121, %118
  store float %122, float* %120, align 4
  br label %123

123:                                              ; preds = %91, %34
  %124 = load float, float* %17, align 4
  %125 = load float, float* %16, align 4
  %126 = fmul float %124, %125
  store float %126, float* %7, align 4
  br label %127

127:                                              ; preds = %123, %33
  %128 = load float, float* %7, align 4
  ret float %128
}

declare dso_local %struct.TYPE_7__* @nvg__getState(%struct.TYPE_8__*) #1

declare dso_local float @nvg__getFontScale(%struct.TYPE_7__*) #1

declare dso_local i32 @fonsSetSize(i32, float) #1

declare dso_local i32 @fonsSetSpacing(i32, float) #1

declare dso_local i32 @fonsSetBlur(i32, float) #1

declare dso_local i32 @fonsSetAlign(i32, i32) #1

declare dso_local i32 @fonsSetFont(i32, i64) #1

declare dso_local float @fonsTextBounds(i32, float, float, i8*, i8*, float*) #1

declare dso_local i32 @fonsLineBounds(i32, float, float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
