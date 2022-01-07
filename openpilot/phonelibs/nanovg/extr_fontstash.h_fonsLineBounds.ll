; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_fontstash.h_fonsLineBounds.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_fontstash.h_fonsLineBounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_10__, %struct.TYPE_12__** }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { float, i16, float, i32* }
%struct.TYPE_11__ = type { i64, float, i32 }

@FONS_ZERO_TOPLEFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fonsLineBounds(%struct.TYPE_13__* %0, float %1, float* %2, float* %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca float, align 4
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i16, align 2
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store float %1, float* %6, align 4
  store float* %2, float** %7, align 8
  store float* %3, float** %8, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %13 = call %struct.TYPE_11__* @fons__getState(%struct.TYPE_13__* %12)
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %10, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %15 = icmp eq %struct.TYPE_13__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %116

17:                                               ; preds = %4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %17
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp uge i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22, %17
  br label %116

31:                                               ; preds = %22
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %33, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %34, i64 %37
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  store %struct.TYPE_12__* %39, %struct.TYPE_12__** %9, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load float, float* %41, align 8
  %43 = fmul float %42, 1.000000e+01
  %44 = fptosi float %43 to i16
  store i16 %44, i16* %11, align 2
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %31
  br label %116

50:                                               ; preds = %31
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i16, i16* %11, align 2
  %57 = call i64 @fons__getVertAlign(%struct.TYPE_13__* %51, %struct.TYPE_12__* %52, i32 %55, i16 signext %56)
  %58 = sitofp i64 %57 to float
  %59 = load float, float* %6, align 4
  %60 = fadd float %59, %58
  store float %60, float* %6, align 4
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @FONS_ZERO_TOPLEFT, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %92

68:                                               ; preds = %50
  %69 = load float, float* %6, align 4
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load float, float* %71, align 8
  %73 = load i16, i16* %11, align 2
  %74 = sitofp i16 %73 to float
  %75 = fmul float %72, %74
  %76 = fdiv float %75, 1.000000e+01
  %77 = fsub float %69, %76
  %78 = load float*, float** %7, align 8
  store float %77, float* %78, align 4
  %79 = load float*, float** %7, align 8
  %80 = load float, float* %79, align 4
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = load i16, i16* %82, align 4
  %84 = sext i16 %83 to i32
  %85 = load i16, i16* %11, align 2
  %86 = sext i16 %85 to i32
  %87 = mul nsw i32 %84, %86
  %88 = sitofp i32 %87 to float
  %89 = fdiv float %88, 1.000000e+01
  %90 = fadd float %80, %89
  %91 = load float*, float** %8, align 8
  store float %90, float* %91, align 4
  br label %116

92:                                               ; preds = %50
  %93 = load float, float* %6, align 4
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 2
  %96 = load float, float* %95, align 8
  %97 = load i16, i16* %11, align 2
  %98 = sitofp i16 %97 to float
  %99 = fmul float %96, %98
  %100 = fdiv float %99, 1.000000e+01
  %101 = fadd float %93, %100
  %102 = load float*, float** %8, align 8
  store float %101, float* %102, align 4
  %103 = load float*, float** %8, align 8
  %104 = load float, float* %103, align 4
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  %107 = load i16, i16* %106, align 4
  %108 = sext i16 %107 to i32
  %109 = load i16, i16* %11, align 2
  %110 = sext i16 %109 to i32
  %111 = mul nsw i32 %108, %110
  %112 = sitofp i32 %111 to float
  %113 = fdiv float %112, 1.000000e+01
  %114 = fsub float %104, %113
  %115 = load float*, float** %7, align 8
  store float %114, float* %115, align 4
  br label %116

116:                                              ; preds = %16, %30, %49, %92, %68
  ret void
}

declare dso_local %struct.TYPE_11__* @fons__getState(%struct.TYPE_13__*) #1

declare dso_local i64 @fons__getVertAlign(%struct.TYPE_13__*, %struct.TYPE_12__*, i32, i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
