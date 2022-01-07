; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeAgg.c_finalize_partialaggregate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeAgg.c_finalize_partialaggregate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_18__, %struct.TYPE_22__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_21__*, %struct.TYPE_19__, i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_24__ = type { i64, i32, i32 }
%struct.TYPE_23__ = type { i32, i64 }

@CurrentMemoryContext = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, %struct.TYPE_24__*, %struct.TYPE_23__*, i64*, i32*)* @finalize_partialaggregate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finalize_partialaggregate(%struct.TYPE_15__* %0, %struct.TYPE_24__* %1, %struct.TYPE_23__* %2, i64* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %7, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i64 %19
  store %struct.TYPE_22__* %20, %struct.TYPE_22__** %11, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @MemoryContextSwitchTo(i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @OidIsValid(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %83

34:                                               ; preds = %5
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i64*, i64** %9, align 8
  store i64 0, i64* %46, align 8
  %47 = load i32*, i32** %10, align 8
  store i32 1, i32* %47, align 4
  br label %82

48:                                               ; preds = %40, %34
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %50, align 8
  store %struct.TYPE_21__* %51, %struct.TYPE_21__** %13, align 8
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @MakeExpandedObjectReadOnly(i64 %54, i32 %57, i32 %60)
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i64 0
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 1
  store i32 %61, i32* %66, align 4
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i64 0
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 0
  store i32 %69, i32* %74, align 4
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %76 = call i64 @FunctionCallInvoke(%struct.TYPE_21__* %75)
  %77 = load i64*, i64** %9, align 8
  store i64 %76, i64* %77, align 8
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32*, i32** %10, align 8
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %48, %45
  br label %92

83:                                               ; preds = %5
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64*, i64** %9, align 8
  store i64 %86, i64* %87, align 8
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32*, i32** %10, align 8
  store i32 %90, i32* %91, align 4
  br label %92

92:                                               ; preds = %83, %82
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %119, label %97

97:                                               ; preds = %92
  %98 = load i32*, i32** %10, align 8
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %119, label %101

101:                                              ; preds = %97
  %102 = load i32, i32* @CurrentMemoryContext, align 4
  %103 = load i64*, i64** %9, align 8
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @DatumGetPointer(i64 %104)
  %106 = call i32 @MemoryContextContains(i32 %102, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %119, label %108

108:                                              ; preds = %101
  %109 = load i64*, i64** %9, align 8
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @datumCopy(i64 %110, i32 %113, i32 %116)
  %118 = load i64*, i64** %9, align 8
  store i64 %117, i64* %118, align 8
  br label %119

119:                                              ; preds = %108, %101, %97, %92
  %120 = load i32, i32* %12, align 4
  %121 = call i32 @MemoryContextSwitchTo(i32 %120)
  ret void
}

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @MakeExpandedObjectReadOnly(i64, i32, i32) #1

declare dso_local i64 @FunctionCallInvoke(%struct.TYPE_21__*) #1

declare dso_local i32 @MemoryContextContains(i32, i32) #1

declare dso_local i32 @DatumGetPointer(i64) #1

declare dso_local i64 @datumCopy(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
