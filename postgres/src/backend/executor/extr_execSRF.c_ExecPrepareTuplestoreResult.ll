; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execSRF.c_ExecPrepareTuplestoreResult.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execSRF.c_ExecPrepareTuplestoreResult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_14__*, i32*, %struct.TYPE_13__, i32* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"function returning setof record called in context that cannot accept type record\00", align 1
@TTSOpsMinimalTuple = common dso_local global i32 0, align 4
@ShutdownSetExpr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i32*, i32*, %struct.TYPE_14__*)* @ExecPrepareTuplestoreResult to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ExecPrepareTuplestoreResult(%struct.TYPE_15__* %0, i32* %1, i32* %2, %struct.TYPE_14__* %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %8, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 4
  store i32* %11, i32** %13, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %52

18:                                               ; preds = %4
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @MemoryContextSwitchTo(i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %27 = icmp ne %struct.TYPE_14__* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %18
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  store %struct.TYPE_14__* %31, %struct.TYPE_14__** %9, align 8
  br label %45

32:                                               ; preds = %18
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %34 = icmp ne %struct.TYPE_14__* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %37 = call %struct.TYPE_14__* @CreateTupleDescCopy(%struct.TYPE_14__* %36)
  store %struct.TYPE_14__* %37, %struct.TYPE_14__** %9, align 8
  br label %44

38:                                               ; preds = %32
  %39 = load i32, i32* @ERROR, align 4
  %40 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %41 = call i32 @errcode(i32 %40)
  %42 = call i32 @errmsg(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0))
  %43 = call i32 @ereport(i32 %39, i32 %42)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %9, align 8
  br label %44

44:                                               ; preds = %38, %35
  br label %45

45:                                               ; preds = %44, %28
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %47 = call i32* @MakeSingleTupleTableSlot(%struct.TYPE_14__* %46, i32* @TTSOpsMinimalTuple)
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 2
  store i32* %47, i32** %49, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @MemoryContextSwitchTo(i32 %50)
  br label %52

52:                                               ; preds = %45, %4
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %54 = icmp ne %struct.TYPE_14__* %53, null
  br i1 %54, label %55, label %75

55:                                               ; preds = %52
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %57, align 8
  %59 = icmp ne %struct.TYPE_14__* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %62, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %65 = call i32 @tupledesc_match(%struct.TYPE_14__* %63, %struct.TYPE_14__* %64)
  br label %66

66:                                               ; preds = %60, %55
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %73 = call i32 @FreeTupleDesc(%struct.TYPE_14__* %72)
  br label %74

74:                                               ; preds = %71, %66
  br label %75

75:                                               ; preds = %74, %52
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %75
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* @ShutdownSetExpr, align 4
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %84 = call i32 @PointerGetDatum(%struct.TYPE_15__* %83)
  %85 = call i32 @RegisterExprContextCallback(i32* %81, i32 %82, i32 %84)
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  br label %88

88:                                               ; preds = %80, %75
  ret void
}

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local %struct.TYPE_14__* @CreateTupleDescCopy(%struct.TYPE_14__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32* @MakeSingleTupleTableSlot(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @tupledesc_match(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @FreeTupleDesc(%struct.TYPE_14__*) #1

declare dso_local i32 @RegisterExprContextCallback(i32*, i32, i32) #1

declare dso_local i32 @PointerGetDatum(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
