; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgFill.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgFill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { float, i32, i32, %struct.TYPE_19__*, %struct.TYPE_18__ }
%struct.TYPE_19__ = type { i32, %struct.TYPE_21__*, i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32 (i32, %struct.TYPE_22__*, i32*, float, i32, %struct.TYPE_21__*, i32)*, i64 }
%struct.TYPE_22__ = type { %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_22__ }

@NVG_MITER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvgFill(%struct.TYPE_23__* %0) #0 {
  %2 = alloca %struct.TYPE_23__*, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_22__, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %2, align 8
  %7 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %8 = call %struct.TYPE_20__* @nvg__getState(%struct.TYPE_23__* %7)
  store %struct.TYPE_20__* %8, %struct.TYPE_20__** %3, align 8
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 2
  %11 = bitcast %struct.TYPE_22__* %5 to i8*
  %12 = bitcast %struct.TYPE_22__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 8, i1 false)
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %14 = call i32 @nvg__flattenPaths(%struct.TYPE_23__* %13)
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 0
  %24 = load float, float* %23, align 8
  %25 = load i32, i32* @NVG_MITER, align 4
  %26 = call i32 @nvg__expandFill(%struct.TYPE_23__* %21, float %24, i32 %25, float 0x4003333340000000)
  br label %31

27:                                               ; preds = %1
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %29 = load i32, i32* @NVG_MITER, align 4
  %30 = call i32 @nvg__expandFill(%struct.TYPE_23__* %28, float 0.000000e+00, i32 %29, float 0x4003333340000000)
  br label %31

31:                                               ; preds = %27, %20
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %5, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %5, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 1
  %49 = load i32 (i32, %struct.TYPE_22__*, i32*, float, i32, %struct.TYPE_21__*, i32)*, i32 (i32, %struct.TYPE_22__*, i32*, float, i32, %struct.TYPE_21__*, i32)** %48, align 8
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 0
  %58 = load float, float* %57, align 8
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 3
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %67, align 8
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 %49(i32 %53, %struct.TYPE_22__* %5, i32* %55, float %58, i32 %63, %struct.TYPE_21__* %68, i32 %73)
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %112, %31
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %76, %81
  br i1 %82, label %83, label %115

83:                                               ; preds = %75
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i64 %90
  store %struct.TYPE_21__* %91, %struct.TYPE_21__** %4, align 8
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %94, 2
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, %95
  store i32 %99, i32* %97, align 8
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sub nsw i32 %102, 2
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %106, %103
  store i32 %107, i32* %105, align 8
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 2
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %83
  %113 = load i32, i32* %6, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %6, align 4
  br label %75

115:                                              ; preds = %75
  ret void
}

declare dso_local %struct.TYPE_20__* @nvg__getState(%struct.TYPE_23__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @nvg__flattenPaths(%struct.TYPE_23__*) #1

declare dso_local i32 @nvg__expandFill(%struct.TYPE_23__*, float, i32, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
