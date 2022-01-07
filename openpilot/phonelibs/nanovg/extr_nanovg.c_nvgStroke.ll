; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgStroke.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgStroke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { float, i32, i32, %struct.TYPE_19__*, %struct.TYPE_18__ }
%struct.TYPE_19__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32 (i32, %struct.TYPE_22__*, i32*, float, float, %struct.TYPE_21__*, i32)*, i64 }
%struct.TYPE_22__ = type { %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { float }
%struct.TYPE_16__ = type { float }
%struct.TYPE_20__ = type { float, float, i32, i32, i32, i32, %struct.TYPE_22__, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvgStroke(%struct.TYPE_23__* %0) #0 {
  %2 = alloca %struct.TYPE_23__*, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca %struct.TYPE_22__, align 4
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %2, align 8
  %10 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %11 = call %struct.TYPE_20__* @nvg__getState(%struct.TYPE_23__* %10)
  store %struct.TYPE_20__* %11, %struct.TYPE_20__** %3, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 4
  %15 = call float @nvg__getAverageScale(i32 %14)
  store float %15, float* %4, align 4
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %18 = load float, float* %17, align 4
  %19 = load float, float* %4, align 4
  %20 = fmul float %18, %19
  %21 = call float @nvg__clampf(float %20, float 0.000000e+00, float 2.000000e+02)
  store float %21, float* %5, align 4
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 6
  %24 = bitcast %struct.TYPE_22__* %6 to i8*
  %25 = bitcast %struct.TYPE_22__* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 8, i1 false)
  %26 = load float, float* %5, align 4
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 0
  %29 = load float, float* %28, align 8
  %30 = fcmp olt float %26, %29
  br i1 %30, label %31, label %55

31:                                               ; preds = %1
  %32 = load float, float* %5, align 4
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 0
  %35 = load float, float* %34, align 8
  %36 = fdiv float %32, %35
  %37 = call float @nvg__clampf(float %36, float 0.000000e+00, float 1.000000e+00)
  store float %37, float* %9, align 4
  %38 = load float, float* %9, align 4
  %39 = load float, float* %9, align 4
  %40 = fmul float %38, %39
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load float, float* %42, align 4
  %44 = fmul float %43, %40
  store float %44, float* %42, align 4
  %45 = load float, float* %9, align 4
  %46 = load float, float* %9, align 4
  %47 = fmul float %45, %46
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load float, float* %49, align 4
  %51 = fmul float %50, %47
  store float %51, float* %49, align 4
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 0
  %54 = load float, float* %53, align 8
  store float %54, float* %5, align 4
  br label %55

55:                                               ; preds = %31, %1
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 1
  %58 = load float, float* %57, align 4
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load float, float* %60, align 4
  %62 = fmul float %61, %58
  store float %62, float* %60, align 4
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 1
  %65 = load float, float* %64, align 4
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = load float, float* %67, align 4
  %69 = fmul float %68, %65
  store float %69, float* %67, align 4
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %71 = call i32 @nvg__flattenPaths(%struct.TYPE_23__* %70)
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %96

77:                                               ; preds = %55
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %79 = load float, float* %5, align 4
  %80 = fmul float %79, 5.000000e-01
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 0
  %83 = load float, float* %82, align 8
  %84 = fmul float %83, 5.000000e-01
  %85 = fadd float %80, %84
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @nvg__expandStroke(%struct.TYPE_23__* %78, float %85, i32 %88, i32 %91, i32 %94)
  br label %110

96:                                               ; preds = %55
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %98 = load float, float* %5, align 4
  %99 = fmul float %98, 5.000000e-01
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @nvg__expandStroke(%struct.TYPE_23__* %97, float %99, i32 %102, i32 %105, i32 %108)
  br label %110

110:                                              ; preds = %96, %77
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 1
  %114 = load i32 (i32, %struct.TYPE_22__*, i32*, float, float, %struct.TYPE_21__*, i32)*, i32 (i32, %struct.TYPE_22__*, i32*, float, float, %struct.TYPE_21__*, i32)** %113, align 8
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 0
  %123 = load float, float* %122, align 8
  %124 = load float, float* %5, align 4
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 3
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %128, align 8
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 3
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 %114(i32 %118, %struct.TYPE_22__* %6, i32* %120, float %123, float %124, %struct.TYPE_21__* %129, i32 %134)
  store i32 0, i32* %8, align 4
  br label %136

136:                                              ; preds = %165, %110
  %137 = load i32, i32* %8, align 4
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 3
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp slt i32 %137, %142
  br i1 %143, label %144, label %168

144:                                              ; preds = %136
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 3
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %148, align 8
  %150 = load i32, i32* %8, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i64 %151
  store %struct.TYPE_21__* %152, %struct.TYPE_21__** %7, align 8
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = sub nsw i32 %155, 2
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = add nsw i32 %159, %156
  store i32 %160, i32* %158, align 8
  %161 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %162, align 4
  br label %165

165:                                              ; preds = %144
  %166 = load i32, i32* %8, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %8, align 4
  br label %136

168:                                              ; preds = %136
  ret void
}

declare dso_local %struct.TYPE_20__* @nvg__getState(%struct.TYPE_23__*) #1

declare dso_local float @nvg__getAverageScale(i32) #1

declare dso_local float @nvg__clampf(float, float, float) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @nvg__flattenPaths(%struct.TYPE_23__*) #1

declare dso_local i32 @nvg__expandStroke(%struct.TYPE_23__*, float, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
