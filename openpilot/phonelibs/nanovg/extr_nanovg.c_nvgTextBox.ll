; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgTextBox.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgTextBox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, float }
%struct.TYPE_5__ = type { float, i8*, i32, i32 }

@NVG_ALIGN_LEFT = common dso_local global i32 0, align 4
@NVG_ALIGN_CENTER = common dso_local global i32 0, align 4
@NVG_ALIGN_RIGHT = common dso_local global i32 0, align 4
@NVG_ALIGN_TOP = common dso_local global i32 0, align 4
@NVG_ALIGN_MIDDLE = common dso_local global i32 0, align 4
@NVG_ALIGN_BOTTOM = common dso_local global i32 0, align 4
@NVG_ALIGN_BASELINE = common dso_local global i32 0, align 4
@FONS_INVALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvgTextBox(i32* %0, float %1, float %2, float %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca [2 x %struct.TYPE_5__], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca float, align 4
  %21 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %7, align 8
  store float %1, float* %8, align 4
  store float %2, float* %9, align 4
  store float %3, float* %10, align 4
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call %struct.TYPE_6__* @nvg__getState(i32* %22)
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %13, align 8
  store i32 0, i32* %15, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %17, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @NVG_ALIGN_LEFT, align 4
  %31 = load i32, i32* @NVG_ALIGN_CENTER, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @NVG_ALIGN_RIGHT, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %29, %34
  store i32 %35, i32* %18, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @NVG_ALIGN_TOP, align 4
  %40 = load i32, i32* @NVG_ALIGN_MIDDLE, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @NVG_ALIGN_BOTTOM, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @NVG_ALIGN_BASELINE, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %38, %45
  store i32 %46, i32* %19, align 4
  store float 0.000000e+00, float* %20, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @FONS_INVALID, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %6
  br label %163

53:                                               ; preds = %6
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @nvgTextMetrics(i32* %54, i32* null, i32* null, float* %20)
  %56 = load i32, i32* @NVG_ALIGN_LEFT, align 4
  %57 = load i32, i32* %19, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %152, %53
  %62 = load i32*, i32** %7, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = load float, float* %10, align 4
  %66 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %14, i64 0, i64 0
  %67 = call i32 @nvgTextBreakLines(i32* %62, i8* %63, i8* %64, float %65, %struct.TYPE_5__* %66, i32 2)
  store i32 %67, i32* %15, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %159

69:                                               ; preds = %61
  store i32 0, i32* %16, align 4
  br label %70

70:                                               ; preds = %149, %69
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* %15, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %152

74:                                               ; preds = %70
  %75 = load i32, i32* %16, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %14, i64 0, i64 %76
  store %struct.TYPE_5__* %77, %struct.TYPE_5__** %21, align 8
  %78 = load i32, i32* %18, align 4
  %79 = load i32, i32* @NVG_ALIGN_LEFT, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %74
  %83 = load i32*, i32** %7, align 8
  %84 = load float, float* %8, align 4
  %85 = load float, float* %9, align 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @nvgText(i32* %83, float %84, float %85, i32 %88, i32 %91)
  br label %141

93:                                               ; preds = %74
  %94 = load i32, i32* %18, align 4
  %95 = load i32, i32* @NVG_ALIGN_CENTER, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %117

98:                                               ; preds = %93
  %99 = load i32*, i32** %7, align 8
  %100 = load float, float* %8, align 4
  %101 = load float, float* %10, align 4
  %102 = fmul float %101, 5.000000e-01
  %103 = fadd float %100, %102
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load float, float* %105, align 8
  %107 = fmul float %106, 5.000000e-01
  %108 = fsub float %103, %107
  %109 = load float, float* %9, align 4
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @nvgText(i32* %99, float %108, float %109, i32 %112, i32 %115)
  br label %140

117:                                              ; preds = %93
  %118 = load i32, i32* %18, align 4
  %119 = load i32, i32* @NVG_ALIGN_RIGHT, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %139

122:                                              ; preds = %117
  %123 = load i32*, i32** %7, align 8
  %124 = load float, float* %8, align 4
  %125 = load float, float* %10, align 4
  %126 = fadd float %124, %125
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load float, float* %128, align 8
  %130 = fsub float %126, %129
  %131 = load float, float* %9, align 4
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @nvgText(i32* %123, float %130, float %131, i32 %134, i32 %137)
  br label %139

139:                                              ; preds = %122, %117
  br label %140

140:                                              ; preds = %139, %98
  br label %141

141:                                              ; preds = %140, %82
  %142 = load float, float* %20, align 4
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 2
  %145 = load float, float* %144, align 8
  %146 = fmul float %142, %145
  %147 = load float, float* %9, align 4
  %148 = fadd float %147, %146
  store float %148, float* %9, align 4
  br label %149

149:                                              ; preds = %141
  %150 = load i32, i32* %16, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %16, align 4
  br label %70

152:                                              ; preds = %70
  %153 = load i32, i32* %15, align 4
  %154 = sub nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %14, i64 0, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 1
  %158 = load i8*, i8** %157, align 8
  store i8* %158, i8** %11, align 8
  br label %61

159:                                              ; preds = %61
  %160 = load i32, i32* %17, align 4
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 8
  br label %163

163:                                              ; preds = %159, %52
  ret void
}

declare dso_local %struct.TYPE_6__* @nvg__getState(i32*) #1

declare dso_local i32 @nvgTextMetrics(i32*, i32*, i32*, float*) #1

declare dso_local i32 @nvgTextBreakLines(i32*, i8*, i8*, float, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @nvgText(i32*, float, float, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
