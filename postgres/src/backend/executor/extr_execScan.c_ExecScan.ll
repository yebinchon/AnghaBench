; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execScan.c_ExecScan.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execScan.c_ExecScan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_16__*, %struct.TYPE_15__*, i32* }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ExecScan(%struct.TYPE_14__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %9, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %10, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  store %struct.TYPE_16__* %23, %struct.TYPE_16__** %8, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %36, label %26

26:                                               ; preds = %3
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %28 = icmp ne %struct.TYPE_15__* %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %26
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %31 = call i32 @ResetExprContext(%struct.TYPE_16__* %30)
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32* @ExecScanFetch(%struct.TYPE_14__* %32, i32 %33, i32 %34)
  store i32* %35, i32** %4, align 8
  br label %83

36:                                               ; preds = %26, %3
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %38 = call i32 @ResetExprContext(%struct.TYPE_16__* %37)
  br label %39

39:                                               ; preds = %80, %36
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32* @ExecScanFetch(%struct.TYPE_14__* %40, i32 %41, i32 %42)
  store i32* %43, i32** %11, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = call i64 @TupIsNull(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %39
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %49 = icmp ne %struct.TYPE_15__* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32* @ExecClearTuple(i32 %54)
  store i32* %55, i32** %4, align 8
  br label %83

56:                                               ; preds = %47
  %57 = load i32*, i32** %11, align 8
  store i32* %57, i32** %4, align 8
  br label %83

58:                                               ; preds = %39
  %59 = load i32*, i32** %11, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  store i32* %59, i32** %61, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %58
  %65 = load i32*, i32** %9, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %67 = call i64 @ExecQual(i32* %65, %struct.TYPE_16__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %64, %58
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %71 = icmp ne %struct.TYPE_15__* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %74 = call i32* @ExecProject(%struct.TYPE_15__* %73)
  store i32* %74, i32** %4, align 8
  br label %83

75:                                               ; preds = %69
  %76 = load i32*, i32** %11, align 8
  store i32* %76, i32** %4, align 8
  br label %83

77:                                               ; preds = %64
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %79 = call i32 @InstrCountFiltered1(%struct.TYPE_14__* %78, i32 1)
  br label %80

80:                                               ; preds = %77
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %82 = call i32 @ResetExprContext(%struct.TYPE_16__* %81)
  br label %39

83:                                               ; preds = %75, %72, %56, %50, %29
  %84 = load i32*, i32** %4, align 8
  ret i32* %84
}

declare dso_local i32 @ResetExprContext(%struct.TYPE_16__*) #1

declare dso_local i32* @ExecScanFetch(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i64 @TupIsNull(i32*) #1

declare dso_local i32* @ExecClearTuple(i32) #1

declare dso_local i64 @ExecQual(i32*, %struct.TYPE_16__*) #1

declare dso_local i32* @ExecProject(%struct.TYPE_15__*) #1

declare dso_local i32 @InstrCountFiltered1(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
