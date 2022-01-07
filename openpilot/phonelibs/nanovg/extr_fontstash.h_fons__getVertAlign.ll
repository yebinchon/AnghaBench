; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_fontstash.h_fons__getVertAlign.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_fontstash.h_fons__getVertAlign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { float, float }

@FONS_ZERO_TOPLEFT = common dso_local global i32 0, align 4
@FONS_ALIGN_TOP = common dso_local global i32 0, align 4
@FONS_ALIGN_MIDDLE = common dso_local global i32 0, align 4
@FONS_ALIGN_BASELINE = common dso_local global i32 0, align 4
@FONS_ALIGN_BOTTOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (%struct.TYPE_8__*, %struct.TYPE_7__*, i32, i16)* @fons__getVertAlign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @fons__getVertAlign(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i32 %2, i16 signext %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i16 %3, i16* %9, align 2
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @FONS_ZERO_TOPLEFT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %71

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @FONS_ALIGN_TOP, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load float, float* %24, align 4
  %26 = load i16, i16* %9, align 2
  %27 = sitofp i16 %26 to float
  %28 = fmul float %25, %27
  %29 = fdiv float %28, 1.000000e+01
  store float %29, float* %5, align 4
  br label %129

30:                                               ; preds = %17
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @FONS_ALIGN_MIDDLE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %30
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load float, float* %37, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load float, float* %40, align 4
  %42 = fadd float %38, %41
  %43 = fdiv float %42, 2.000000e+00
  %44 = load i16, i16* %9, align 2
  %45 = sitofp i16 %44 to float
  %46 = fmul float %43, %45
  %47 = fdiv float %46, 1.000000e+01
  store float %47, float* %5, align 4
  br label %129

48:                                               ; preds = %30
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @FONS_ALIGN_BASELINE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store float 0.000000e+00, float* %5, align 4
  br label %129

54:                                               ; preds = %48
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @FONS_ALIGN_BOTTOM, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load float, float* %61, align 4
  %63 = load i16, i16* %9, align 2
  %64 = sitofp i16 %63 to float
  %65 = fmul float %62, %64
  %66 = fdiv float %65, 1.000000e+01
  store float %66, float* %5, align 4
  br label %129

67:                                               ; preds = %54
  br label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %68
  br label %70

70:                                               ; preds = %69
  br label %128

71:                                               ; preds = %4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @FONS_ALIGN_TOP, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %71
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load float, float* %78, align 4
  %80 = fneg float %79
  %81 = load i16, i16* %9, align 2
  %82 = sitofp i16 %81 to float
  %83 = fmul float %80, %82
  %84 = fdiv float %83, 1.000000e+01
  store float %84, float* %5, align 4
  br label %129

85:                                               ; preds = %71
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @FONS_ALIGN_MIDDLE, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %85
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load float, float* %92, align 4
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load float, float* %95, align 4
  %97 = fadd float %93, %96
  %98 = fneg float %97
  %99 = fdiv float %98, 2.000000e+00
  %100 = load i16, i16* %9, align 2
  %101 = sitofp i16 %100 to float
  %102 = fmul float %99, %101
  %103 = fdiv float %102, 1.000000e+01
  store float %103, float* %5, align 4
  br label %129

104:                                              ; preds = %85
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @FONS_ALIGN_BASELINE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  store float 0.000000e+00, float* %5, align 4
  br label %129

110:                                              ; preds = %104
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @FONS_ALIGN_BOTTOM, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %124

115:                                              ; preds = %110
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load float, float* %117, align 4
  %119 = fneg float %118
  %120 = load i16, i16* %9, align 2
  %121 = sitofp i16 %120 to float
  %122 = fmul float %119, %121
  %123 = fdiv float %122, 1.000000e+01
  store float %123, float* %5, align 4
  br label %129

124:                                              ; preds = %110
  br label %125

125:                                              ; preds = %124
  br label %126

126:                                              ; preds = %125
  br label %127

127:                                              ; preds = %126
  br label %128

128:                                              ; preds = %127, %70
  store float 0.000000e+00, float* %5, align 4
  br label %129

129:                                              ; preds = %128, %115, %109, %90, %76, %59, %53, %35, %22
  %130 = load float, float* %5, align 4
  ret float %130
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
