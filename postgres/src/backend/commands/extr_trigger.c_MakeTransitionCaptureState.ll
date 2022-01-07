; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_trigger.c_MakeTransitionCaptureState.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_trigger.c_MakeTransitionCaptureState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32*, i32* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"unexpected CmdType: %d\00", align 1
@afterTriggers = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"MakeTransitionCaptureState() called outside of query\00", align 1
@CurTransactionContext = common dso_local global i32 0, align 4
@CurrentResourceOwner = common dso_local global i32 0, align 4
@CurTransactionResourceOwner = common dso_local global i32 0, align 4
@work_mem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @MakeTransitionCaptureState(%struct.TYPE_8__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = icmp eq %struct.TYPE_8__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %122

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %34 [
    i32 129, label %19
    i32 128, label %23
    i32 130, label %30
  ]

19:                                               ; preds = %17
  store i32 0, i32* %9, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  br label %38

23:                                               ; preds = %17
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %10, align 4
  br label %38

30:                                               ; preds = %17
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %38

34:                                               ; preds = %17
  %35 = load i32, i32* @ERROR, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 (i32, i8*, ...) @elog(i32 %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %34, %30, %23, %19
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %122

45:                                               ; preds = %41, %38
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @afterTriggers, i32 0, i32 0), align 8
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* @ERROR, align 4
  %50 = call i32 (i32, i8*, ...) @elog(i32 %49, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @afterTriggers, i32 0, i32 0), align 8
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @afterTriggers, i32 0, i32 1), align 8
  %54 = icmp sge i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = call i32 (...) @AfterTriggerEnlargeQueryState()
  br label %57

57:                                               ; preds = %55, %51
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call %struct.TYPE_10__* @GetAfterTriggersTableData(i32 %58, i32 %59)
  store %struct.TYPE_10__* %60, %struct.TYPE_10__** %11, align 8
  %61 = load i32, i32* @CurTransactionContext, align 4
  %62 = call i32 @MemoryContextSwitchTo(i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* @CurrentResourceOwner, align 4
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* @CurTransactionResourceOwner, align 4
  store i32 %64, i32* @CurrentResourceOwner, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %57
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load i32, i32* @work_mem, align 4
  %74 = call i8* @tuplestore_begin_heap(i32 0, i32 0, i32 %73)
  %75 = bitcast i8* %74 to i32*
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  store i32* %75, i32** %77, align 8
  br label %78

78:                                               ; preds = %72, %67, %57
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %78
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load i32, i32* @work_mem, align 4
  %88 = call i8* @tuplestore_begin_heap(i32 0, i32 0, i32 %87)
  %89 = bitcast i8* %88 to i32*
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  store i32* %89, i32** %91, align 8
  br label %92

92:                                               ; preds = %86, %81, %78
  %93 = load i32, i32* %13, align 4
  store i32 %93, i32* @CurrentResourceOwner, align 4
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @MemoryContextSwitchTo(i32 %94)
  %96 = call i64 @palloc0(i32 24)
  %97 = inttoptr i64 %96 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %97, %struct.TYPE_9__** %8, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 8
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 4
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 4
  store %struct.TYPE_10__* %118, %struct.TYPE_10__** %120, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %121, %struct.TYPE_9__** %4, align 8
  br label %122

122:                                              ; preds = %92, %44, %16
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  ret %struct.TYPE_9__* %123
}

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @AfterTriggerEnlargeQueryState(...) #1

declare dso_local %struct.TYPE_10__* @GetAfterTriggersTableData(i32, i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i8* @tuplestore_begin_heap(i32, i32, i32) #1

declare dso_local i64 @palloc0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
