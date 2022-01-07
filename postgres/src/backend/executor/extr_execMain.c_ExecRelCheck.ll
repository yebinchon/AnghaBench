; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execMain.c_ExecRelCheck.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execMain.c_ExecRelCheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32**, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i8*, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_16__*, i32*, %struct.TYPE_19__*)* @ExecRelCheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ExecRelCheck(%struct.TYPE_16__* %0, i32* %1, %struct.TYPE_19__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %7, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  store %struct.TYPE_17__* %18, %struct.TYPE_17__** %8, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %9, align 4
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %31, align 8
  store %struct.TYPE_20__* %32, %struct.TYPE_20__** %10, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load i32**, i32*** %34, align 8
  %36 = icmp eq i32** %35, null
  br i1 %36, label %37, label %77

37:                                               ; preds = %3
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @MemoryContextSwitchTo(i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 8
  %45 = trunc i64 %44 to i32
  %46 = call i64 @palloc(i32 %45)
  %47 = inttoptr i64 %46 to i32**
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  store i32** %47, i32*** %49, align 8
  store i32 0, i32* %13, align 4
  br label %50

50:                                               ; preds = %71, %37
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %50
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32* @stringToNode(i32 %60)
  store i32* %61, i32** %14, align 8
  %62 = load i32*, i32** %14, align 8
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %64 = call i32* @ExecPrepareExpr(i32* %62, %struct.TYPE_19__* %63)
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load i32**, i32*** %66, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32*, i32** %67, i64 %69
  store i32* %64, i32** %70, align 8
  br label %71

71:                                               ; preds = %54
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %13, align 4
  br label %50

74:                                               ; preds = %50
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @MemoryContextSwitchTo(i32 %75)
  br label %77

77:                                               ; preds = %74, %3
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %79 = call %struct.TYPE_18__* @GetPerTupleExprContext(%struct.TYPE_19__* %78)
  store %struct.TYPE_18__* %79, %struct.TYPE_18__** %11, align 8
  %80 = load i32*, i32** %6, align 8
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 0
  store i32* %80, i32** %82, align 8
  store i32 0, i32* %13, align 4
  br label %83

83:                                               ; preds = %107, %77
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %110

87:                                               ; preds = %83
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = load i32**, i32*** %89, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32*, i32** %90, i64 %92
  %94 = load i32*, i32** %93, align 8
  store i32* %94, i32** %15, align 8
  %95 = load i32*, i32** %15, align 8
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %97 = call i32 @ExecCheck(i32* %95, %struct.TYPE_18__* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %87
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %101 = load i32, i32* %13, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  store i8* %105, i8** %4, align 8
  br label %111

106:                                              ; preds = %87
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %13, align 4
  br label %83

110:                                              ; preds = %83
  store i8* null, i8** %4, align 8
  br label %111

111:                                              ; preds = %110, %99
  %112 = load i8*, i8** %4, align 8
  ret i8* %112
}

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32* @stringToNode(i32) #1

declare dso_local i32* @ExecPrepareExpr(i32*, %struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_18__* @GetPerTupleExprContext(%struct.TYPE_19__*) #1

declare dso_local i32 @ExecCheck(i32*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
