; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_resetAccumulator.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_resetAccumulator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32* }
%struct.TYPE_16__ = type { i32, i32, i32, i32, %struct.AggInfo_func*, %struct.TYPE_12__* }
%struct.AggInfo_func = type { i64, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_12__ = type { i64 }

@OP_Null = common dso_local global i32 0, align 4
@EP_xIsSelect = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"DISTINCT aggregates must have exactly one argument\00", align 1
@OP_OpenEphemeral = common dso_local global i32 0, align 4
@P4_KEYINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_16__*)* @resetAccumulator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resetAccumulator(%struct.TYPE_14__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.AggInfo_func*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %5, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %16, %19
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %102

24:                                               ; preds = %2
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* @OP_Null, align 4
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = call i32 @sqlite3VdbeAddOp3(i32* %25, i32 %26, i32 0, i64 %30, i64 %34)
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 4
  %38 = load %struct.AggInfo_func*, %struct.AggInfo_func** %37, align 8
  store %struct.AggInfo_func* %38, %struct.AggInfo_func** %7, align 8
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %97, %24
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %102

45:                                               ; preds = %39
  %46 = load %struct.AggInfo_func*, %struct.AggInfo_func** %7, align 8
  %47 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %96

50:                                               ; preds = %45
  %51 = load %struct.AggInfo_func*, %struct.AggInfo_func** %7, align 8
  %52 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %51, i32 0, i32 2
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %52, align 8
  store %struct.TYPE_15__* %53, %struct.TYPE_15__** %9, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %55 = load i32, i32* @EP_xIsSelect, align 4
  %56 = call i32 @ExprHasProperty(%struct.TYPE_15__* %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %63, align 8
  %65 = icmp eq %struct.TYPE_17__* %64, null
  br i1 %65, label %74, label %66

66:                                               ; preds = %50
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 1
  br i1 %73, label %74, label %79

74:                                               ; preds = %66, %50
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %76 = call i32 @sqlite3ErrorMsg(%struct.TYPE_14__* %75, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %77 = load %struct.AggInfo_func*, %struct.AggInfo_func** %7, align 8
  %78 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %77, i32 0, i32 1
  store i32 -1, i32* %78, align 8
  br label %95

79:                                               ; preds = %66
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %83, align 8
  %85 = call i32* @sqlite3KeyInfoFromExprList(%struct.TYPE_14__* %80, %struct.TYPE_17__* %84, i32 0, i32 0)
  store i32* %85, i32** %10, align 8
  %86 = load i32*, i32** %5, align 8
  %87 = load i32, i32* @OP_OpenEphemeral, align 4
  %88 = load %struct.AggInfo_func*, %struct.AggInfo_func** %7, align 8
  %89 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = bitcast i32* %91 to i8*
  %93 = load i32, i32* @P4_KEYINFO, align 4
  %94 = call i32 @sqlite3VdbeAddOp4(i32* %86, i32 %87, i32 %90, i32 0, i32 0, i8* %92, i32 %93)
  br label %95

95:                                               ; preds = %79, %74
  br label %96

96:                                               ; preds = %95, %45
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %6, align 4
  %100 = load %struct.AggInfo_func*, %struct.AggInfo_func** %7, align 8
  %101 = getelementptr inbounds %struct.AggInfo_func, %struct.AggInfo_func* %100, i32 1
  store %struct.AggInfo_func* %101, %struct.AggInfo_func** %7, align 8
  br label %39

102:                                              ; preds = %23, %39
  ret void
}

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i64, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ExprHasProperty(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_14__*, i8*) #1

declare dso_local i32* @sqlite3KeyInfoFromExprList(%struct.TYPE_14__*, %struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
