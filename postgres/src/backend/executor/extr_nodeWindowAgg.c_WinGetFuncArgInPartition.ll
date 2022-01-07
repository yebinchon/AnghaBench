; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeWindowAgg.c_WinGetFuncArgInPartition.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeWindowAgg.c_WinGetFuncArgInPartition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i32*, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32* }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"unrecognized window seek type: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WinGetFuncArgInPartition(%struct.TYPE_14__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca %struct.TYPE_16__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %22 = call i32 @WindowObjectIsValid(%struct.TYPE_14__* %21)
  %23 = call i32 @Assert(i32 %22)
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  store %struct.TYPE_15__* %26, %struct.TYPE_15__** %16, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  store %struct.TYPE_16__* %31, %struct.TYPE_16__** %17, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %18, align 8
  %35 = load i32, i32* %12, align 4
  switch i32 %35, label %53 [
    i32 130, label %36
    i32 129, label %42
    i32 128, label %44
  ]

36:                                               ; preds = %7
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %39, %40
  store i32 %41, i32* %20, align 4
  br label %57

42:                                               ; preds = %7
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %20, align 4
  br label %57

44:                                               ; preds = %7
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %46 = call i32 @spool_tuples(%struct.TYPE_15__* %45, i32 -1)
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %49, 1
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %20, align 4
  br label %57

53:                                               ; preds = %7
  %54 = load i32, i32* @ERROR, align 4
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @elog(i32 %54, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %55)
  store i32 0, i32* %20, align 4
  br label %57

57:                                               ; preds = %53, %44, %42, %36
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %59 = load i32, i32* %20, align 4
  %60 = load i32*, i32** %18, align 8
  %61 = call i32 @window_gettupleslot(%struct.TYPE_14__* %58, i32 %59, i32* %60)
  store i32 %61, i32* %19, align 4
  %62 = load i32, i32* %19, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %57
  %65 = load i32*, i32** %15, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32*, i32** %15, align 8
  store i32 1, i32* %68, align 4
  br label %69

69:                                               ; preds = %67, %64
  %70 = load i32*, i32** %14, align 8
  store i32 1, i32* %70, align 4
  store i32 0, i32* %8, align 4
  br label %96

71:                                               ; preds = %57
  %72 = load i32*, i32** %15, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i32*, i32** %15, align 8
  store i32 0, i32* %75, align 4
  br label %76

76:                                               ; preds = %74, %71
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %81 = load i32, i32* %20, align 4
  %82 = call i32 @WinSetMarkPosition(%struct.TYPE_14__* %80, i32 %81)
  br label %83

83:                                               ; preds = %79, %76
  %84 = load i32*, i32** %18, align 8
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  store i32* %84, i32** %86, align 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = call i64 @list_nth(i32 %89, i32 %90)
  %92 = inttoptr i64 %91 to i32*
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %94 = load i32*, i32** %14, align 8
  %95 = call i32 @ExecEvalExpr(i32* %92, %struct.TYPE_16__* %93, i32* %94)
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %83, %69
  %97 = load i32, i32* %8, align 4
  ret i32 %97
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @WindowObjectIsValid(%struct.TYPE_14__*) #1

declare dso_local i32 @spool_tuples(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @window_gettupleslot(%struct.TYPE_14__*, i32, i32*) #1

declare dso_local i32 @WinSetMarkPosition(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ExecEvalExpr(i32*, %struct.TYPE_16__*, i32*) #1

declare dso_local i64 @list_nth(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
