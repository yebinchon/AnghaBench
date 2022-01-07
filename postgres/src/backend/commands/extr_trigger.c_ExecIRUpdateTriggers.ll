; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_trigger.c_ExecIRUpdateTriggers.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_trigger.c_ExecIRUpdateTriggers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32 }

@T_TriggerData = common dso_local global i32 0, align 4
@TRIGGER_EVENT_UPDATE = common dso_local global i32 0, align 4
@TRIGGER_EVENT_ROW = common dso_local global i32 0, align 4
@TRIGGER_EVENT_INSTEAD = common dso_local global i32 0, align 4
@TRIGGER_TYPE_ROW = common dso_local global i32 0, align 4
@TRIGGER_TYPE_INSTEAD = common dso_local global i32 0, align 4
@TRIGGER_TYPE_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ExecIRUpdateTriggers(i32* %0, %struct.TYPE_13__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_11__, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %10, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %23 = call i32* @ExecGetTriggerOldSlot(i32* %21, %struct.TYPE_13__* %22)
  store i32* %23, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %24 = load i32, i32* @T_TriggerData, align 4
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 9
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @TRIGGER_EVENT_UPDATE, align 4
  %27 = load i32, i32* @TRIGGER_EVENT_ROW, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @TRIGGER_EVENT_INSTEAD, align 4
  %30 = or i32 %28, %29
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 8
  store i32 %34, i32* %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 7
  store i32* null, i32** %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 6
  store i32* null, i32** %37, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 @ExecForceStoreHeapTuple(i32* %38, i32* %39, i32 0)
  store i32 0, i32* %15, align 4
  br label %41

41:                                               ; preds = %120, %4
  %42 = load i32, i32* %15, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %123

47:                                               ; preds = %41
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = load i32, i32* %15, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i64 %52
  store %struct.TYPE_12__* %53, %struct.TYPE_12__** %16, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @TRIGGER_TYPE_ROW, align 4
  %58 = load i32, i32* @TRIGGER_TYPE_INSTEAD, align 4
  %59 = load i32, i32* @TRIGGER_TYPE_UPDATE, align 4
  %60 = call i32 @TRIGGER_TYPE_MATCHES(i32 %56, i32 %57, i32 %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %47
  br label %120

63:                                               ; preds = %47
  %64 = load i32*, i32** %6, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @TriggerEnabled(i32* %64, %struct.TYPE_13__* %65, %struct.TYPE_12__* %66, i32 %68, i32* null, i32* %69, i32* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %63
  br label %120

74:                                               ; preds = %63
  %75 = load i32*, i32** %12, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load i32*, i32** %9, align 8
  %79 = call i32* @ExecFetchSlotHeapTuple(i32* %78, i32 1, i32* %13)
  store i32* %79, i32** %12, align 8
  br label %80

80:                                               ; preds = %77, %74
  %81 = load i32*, i32** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 5
  store i32* %81, i32** %82, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 4
  store i32* %83, i32** %84, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 3
  store i32* %85, i32** %86, align 8
  %87 = load i32*, i32** %12, align 8
  store i32* %87, i32** %17, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 2
  store i32* %87, i32** %88, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  store %struct.TYPE_12__* %89, %struct.TYPE_12__** %90, align 8
  %91 = load i32, i32* %15, align 4
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32*, i32** %6, align 8
  %99 = call i32 @GetPerTupleMemoryContext(i32* %98)
  %100 = call i32* @ExecCallTriggerFunc(%struct.TYPE_11__* %14, i32 %91, i32 %94, i32 %97, i32 %99)
  store i32* %100, i32** %12, align 8
  %101 = load i32*, i32** %12, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %103, label %104

103:                                              ; preds = %80
  store i32 0, i32* %5, align 4
  br label %124

104:                                              ; preds = %80
  %105 = load i32*, i32** %12, align 8
  %106 = load i32*, i32** %17, align 8
  %107 = icmp ne i32* %105, %106
  br i1 %107, label %108, label %118

108:                                              ; preds = %104
  %109 = load i32*, i32** %12, align 8
  %110 = load i32*, i32** %9, align 8
  %111 = call i32 @ExecForceStoreHeapTuple(i32* %109, i32* %110, i32 0)
  %112 = load i32, i32* %13, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = load i32*, i32** %17, align 8
  %116 = call i32 @heap_freetuple(i32* %115)
  br label %117

117:                                              ; preds = %114, %108
  store i32* null, i32** %12, align 8
  br label %118

118:                                              ; preds = %117, %104
  br label %119

119:                                              ; preds = %118
  br label %120

120:                                              ; preds = %119, %73, %62
  %121 = load i32, i32* %15, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %15, align 4
  br label %41

123:                                              ; preds = %41
  store i32 1, i32* %5, align 4
  br label %124

124:                                              ; preds = %123, %103
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local i32* @ExecGetTriggerOldSlot(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @ExecForceStoreHeapTuple(i32*, i32*, i32) #1

declare dso_local i32 @TRIGGER_TYPE_MATCHES(i32, i32, i32, i32) #1

declare dso_local i32 @TriggerEnabled(i32*, %struct.TYPE_13__*, %struct.TYPE_12__*, i32, i32*, i32*, i32*) #1

declare dso_local i32* @ExecFetchSlotHeapTuple(i32*, i32, i32*) #1

declare dso_local i32* @ExecCallTriggerFunc(%struct.TYPE_11__*, i32, i32, i32, i32) #1

declare dso_local i32 @GetPerTupleMemoryContext(i32*) #1

declare dso_local i32 @heap_freetuple(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
