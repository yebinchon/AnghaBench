; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeHash.c_ExecScanHashTableForUnmatched.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeHash.c_ExecScanHashTableForUnmatched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, %struct.TYPE_15__*, i32, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i64, i64, i32*, %struct.TYPE_13__**, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { %struct.TYPE_15__* }
%struct.TYPE_12__ = type { %struct.TYPE_15__** }
%struct.TYPE_18__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ExecScanHashTableForUnmatched(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 4
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  store %struct.TYPE_16__* %12, %struct.TYPE_16__** %6, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %7, align 8
  br label %16

16:                                               ; preds = %108, %2
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %18 = icmp ne %struct.TYPE_15__* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  store %struct.TYPE_15__* %23, %struct.TYPE_15__** %7, align 8
  br label %79

24:                                               ; preds = %16
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %27, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %24
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %35, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %36, i64 %39
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %40, align 8
  store %struct.TYPE_15__* %41, %struct.TYPE_15__** %7, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %43, align 8
  br label %78

46:                                               ; preds = %24
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ult i64 %49, %52
  br i1 %53, label %54, label %76

54:                                               ; preds = %46
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %8, align 4
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 3
  %65 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %65, i64 %67
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %70, align 8
  store %struct.TYPE_15__* %71, %struct.TYPE_15__** %7, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %73, align 8
  br label %77

76:                                               ; preds = %46
  br label %110

77:                                               ; preds = %54
  br label %78

78:                                               ; preds = %77, %32
  br label %79

79:                                               ; preds = %78, %19
  br label %80

80:                                               ; preds = %103, %79
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %82 = icmp ne %struct.TYPE_15__* %81, null
  br i1 %82, label %83, label %108

83:                                               ; preds = %80
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %85 = call i32 @HJTUPLE_MINTUPLE(%struct.TYPE_15__* %84)
  %86 = call i32 @HeapTupleHeaderHasMatch(i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %103, label %88

88:                                               ; preds = %83
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %90 = call i32 @HJTUPLE_MINTUPLE(%struct.TYPE_15__* %89)
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = call i32* @ExecStoreMinimalTuple(i32 %90, i32 %93, i32 0)
  store i32* %94, i32** %9, align 8
  %95 = load i32*, i32** %9, align 8
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  store i32* %95, i32** %97, align 8
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %99 = call i32 @ResetExprContext(%struct.TYPE_18__* %98)
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 2
  store %struct.TYPE_15__* %100, %struct.TYPE_15__** %102, align 8
  store i32 1, i32* %3, align 4
  br label %111

103:                                              ; preds = %83
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %106, align 8
  store %struct.TYPE_15__* %107, %struct.TYPE_15__** %7, align 8
  br label %80

108:                                              ; preds = %80
  %109 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  br label %16

110:                                              ; preds = %76
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %110, %88
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @HeapTupleHeaderHasMatch(i32) #1

declare dso_local i32 @HJTUPLE_MINTUPLE(%struct.TYPE_15__*) #1

declare dso_local i32* @ExecStoreMinimalTuple(i32, i32, i32) #1

declare dso_local i32 @ResetExprContext(%struct.TYPE_18__*) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
