; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_trigger.c_ExecIRDeleteTriggers.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_trigger.c_ExecIRDeleteTriggers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32 }

@T_TriggerData = common dso_local global i32 0, align 4
@TRIGGER_EVENT_DELETE = common dso_local global i32 0, align 4
@TRIGGER_EVENT_ROW = common dso_local global i32 0, align 4
@TRIGGER_EVENT_INSTEAD = common dso_local global i32 0, align 4
@TRIGGER_TYPE_ROW = common dso_local global i32 0, align 4
@TRIGGER_TYPE_INSTEAD = common dso_local global i32 0, align 4
@TRIGGER_TYPE_DELETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ExecIRDeleteTriggers(i32* %0, %struct.TYPE_13__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %8, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %19 = call i32* @ExecGetTriggerOldSlot(i32* %17, %struct.TYPE_13__* %18)
  store i32* %19, i32** %9, align 8
  %20 = load i32, i32* @T_TriggerData, align 4
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 9
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @TRIGGER_EVENT_DELETE, align 4
  %23 = load i32, i32* @TRIGGER_EVENT_ROW, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @TRIGGER_EVENT_INSTEAD, align 4
  %26 = or i32 %24, %25
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  store i32 %26, i32* %27, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 8
  store i32 %30, i32* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  store i32* null, i32** %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 7
  store i32* null, i32** %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 3
  store i32* null, i32** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 6
  store i32* null, i32** %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 5
  store i32* null, i32** %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 4
  store i32* null, i32** %37, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @ExecForceStoreHeapTuple(i32* %38, i32* %39, i32 0)
  store i32 0, i32* %11, align 4
  br label %41

41:                                               ; preds = %101, %3
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %104

47:                                               ; preds = %41
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i64 %52
  store %struct.TYPE_12__* %53, %struct.TYPE_12__** %13, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @TRIGGER_TYPE_ROW, align 4
  %58 = load i32, i32* @TRIGGER_TYPE_INSTEAD, align 4
  %59 = load i32, i32* @TRIGGER_TYPE_DELETE, align 4
  %60 = call i32 @TRIGGER_TYPE_MATCHES(i32 %56, i32 %57, i32 %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %47
  br label %101

63:                                               ; preds = %47
  %64 = load i32*, i32** %5, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = call i32 @TriggerEnabled(i32* %64, %struct.TYPE_13__* %65, %struct.TYPE_12__* %66, i32 %68, i32* null, i32* %69, i32* null)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %63
  br label %101

73:                                               ; preds = %63
  %74 = load i32*, i32** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 3
  store i32* %74, i32** %75, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  store i32* %76, i32** %77, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  store %struct.TYPE_12__* %78, %struct.TYPE_12__** %79, align 8
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @GetPerTupleMemoryContext(i32* %87)
  %89 = call i32* @ExecCallTriggerFunc(%struct.TYPE_11__* %10, i32 %80, i32 %83, i32 %86, i32 %88)
  store i32* %89, i32** %12, align 8
  %90 = load i32*, i32** %12, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %73
  store i32 0, i32* %4, align 4
  br label %105

93:                                               ; preds = %73
  %94 = load i32*, i32** %12, align 8
  %95 = load i32*, i32** %7, align 8
  %96 = icmp ne i32* %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load i32*, i32** %12, align 8
  %99 = call i32 @heap_freetuple(i32* %98)
  br label %100

100:                                              ; preds = %97, %93
  br label %101

101:                                              ; preds = %100, %72, %62
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %11, align 4
  br label %41

104:                                              ; preds = %41
  store i32 1, i32* %4, align 4
  br label %105

105:                                              ; preds = %104, %92
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32* @ExecGetTriggerOldSlot(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @ExecForceStoreHeapTuple(i32*, i32*, i32) #1

declare dso_local i32 @TRIGGER_TYPE_MATCHES(i32, i32, i32, i32) #1

declare dso_local i32 @TriggerEnabled(i32*, %struct.TYPE_13__*, %struct.TYPE_12__*, i32, i32*, i32*, i32*) #1

declare dso_local i32* @ExecCallTriggerFunc(%struct.TYPE_11__*, i32, i32, i32, i32) #1

declare dso_local i32 @GetPerTupleMemoryContext(i32*) #1

declare dso_local i32 @heap_freetuple(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
