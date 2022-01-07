; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgscan.c_spgMakeInnerItem.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgscan.c_spgMakeInnerItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32*, i32, i64, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_16__ = type { i32**, i32*, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_17__* (%struct.TYPE_18__*, %struct.TYPE_17__*, %struct.TYPE_19__*, %struct.TYPE_16__*, i32, i32, double*)* @spgMakeInnerItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_17__* @spgMakeInnerItem(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1, %struct.TYPE_19__* %2, %struct.TYPE_16__* %3, i32 %4, i32 %5, double* %6) #0 {
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double*, align 8
  %15 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %9, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %10, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store double* %6, double** %14, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %17 = load i32, i32* %13, align 4
  %18 = load double*, double** %14, align 8
  %19 = call %struct.TYPE_17__* @spgAllocSearchItem(%struct.TYPE_18__* %16, i32 %17, double* %18)
  store %struct.TYPE_17__* %19, %struct.TYPE_17__** %15, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 2
  %27 = load i64*, i64** %26, align 8
  %28 = icmp ne i64* %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %7
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 2
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %32, %39
  br label %45

41:                                               ; preds = %7
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  br label %45

45:                                               ; preds = %41, %29
  %46 = phi i64 [ %40, %29 ], [ %44, %41 ]
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 5
  store i64 %46, i64* %48, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %72

53:                                               ; preds = %45
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @datumCopy(i32 %60, i32 %65, i32 %70)
  br label %73

72:                                               ; preds = %45
  br label %73

73:                                               ; preds = %72, %53
  %74 = phi i32 [ %71, %53 ], [ 0, %72 ]
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = load i32**, i32*** %78, align 8
  %80 = icmp ne i32** %79, null
  br i1 %80, label %81, label %89

81:                                               ; preds = %73
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load i32**, i32*** %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32*, i32** %84, i64 %86
  %88 = load i32*, i32** %87, align 8
  br label %90

89:                                               ; preds = %73
  br label %90

90:                                               ; preds = %89, %81
  %91 = phi i32* [ %88, %81 ], [ null, %89 ]
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 3
  store i32* %91, i32** %93, align 8
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  store i32 0, i32* %95, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 1
  store i32 0, i32* %97, align 4
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 2
  store i32 0, i32* %99, align 8
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  ret %struct.TYPE_17__* %100
}

declare dso_local %struct.TYPE_17__* @spgAllocSearchItem(%struct.TYPE_18__*, i32, double*) #1

declare dso_local i32 @datumCopy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
