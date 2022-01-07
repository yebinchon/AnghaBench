; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_trigger.c_ExecBRInsertTriggers.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_trigger.c_ExecBRInsertTriggers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_11__*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32 }

@T_TriggerData = common dso_local global i32 0, align 4
@TRIGGER_EVENT_INSERT = common dso_local global i32 0, align 4
@TRIGGER_EVENT_ROW = common dso_local global i32 0, align 4
@TRIGGER_EVENT_BEFORE = common dso_local global i32 0, align 4
@TRIGGER_TYPE_ROW = common dso_local global i32 0, align 4
@TRIGGER_TYPE_BEFORE = common dso_local global i32 0, align 4
@TRIGGER_TYPE_INSERT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ExecBRInsertTriggers(i32* %0, %struct.TYPE_12__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %8, align 8
  store i32* null, i32** %9, align 8
  %18 = load i32, i32* @T_TriggerData, align 4
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 9
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @TRIGGER_EVENT_INSERT, align 4
  %21 = load i32, i32* @TRIGGER_EVENT_ROW, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @TRIGGER_EVENT_BEFORE, align 4
  %24 = or i32 %22, %23
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  store i32 %24, i32* %25, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 8
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  store i32* null, i32** %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 7
  store i32* null, i32** %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 3
  store i32* null, i32** %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 6
  store i32* null, i32** %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 5
  store i32* null, i32** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 4
  store i32* null, i32** %35, align 8
  store i32 0, i32* %12, align 4
  br label %36

36:                                               ; preds = %116, %3
  %37 = load i32, i32* %12, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %119

42:                                               ; preds = %36
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i64 %47
  store %struct.TYPE_11__* %48, %struct.TYPE_11__** %13, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @TRIGGER_TYPE_ROW, align 4
  %53 = load i32, i32* @TRIGGER_TYPE_BEFORE, align 4
  %54 = load i32, i32* @TRIGGER_TYPE_INSERT, align 4
  %55 = call i32 @TRIGGER_TYPE_MATCHES(i32 %51, i32 %52, i32 %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %42
  br label %116

58:                                               ; preds = %42
  %59 = load i32*, i32** %5, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = call i32 @TriggerEnabled(i32* %59, %struct.TYPE_12__* %60, %struct.TYPE_11__* %61, i32 %63, i32* null, i32* null, i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %58
  br label %116

68:                                               ; preds = %58
  %69 = load i32*, i32** %9, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i32*, i32** %7, align 8
  %73 = call i32* @ExecFetchSlotHeapTuple(i32* %72, i32 1, i32* %10)
  store i32* %73, i32** %9, align 8
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i32*, i32** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 3
  store i32* %75, i32** %76, align 8
  %77 = load i32*, i32** %9, align 8
  store i32* %77, i32** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  store i32* %77, i32** %78, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  store %struct.TYPE_11__* %79, %struct.TYPE_11__** %80, align 8
  %81 = load i32, i32* %12, align 4
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32*, i32** %5, align 8
  %89 = call i32 @GetPerTupleMemoryContext(i32* %88)
  %90 = call i32* @ExecCallTriggerFunc(%struct.TYPE_10__* %11, i32 %81, i32 %84, i32 %87, i32 %89)
  store i32* %90, i32** %9, align 8
  %91 = load i32*, i32** %9, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %100

93:                                               ; preds = %74
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32*, i32** %14, align 8
  %98 = call i32 @heap_freetuple(i32* %97)
  br label %99

99:                                               ; preds = %96, %93
  store i32 0, i32* %4, align 4
  br label %120

100:                                              ; preds = %74
  %101 = load i32*, i32** %9, align 8
  %102 = load i32*, i32** %14, align 8
  %103 = icmp ne i32* %101, %102
  br i1 %103, label %104, label %114

104:                                              ; preds = %100
  %105 = load i32*, i32** %9, align 8
  %106 = load i32*, i32** %7, align 8
  %107 = call i32 @ExecForceStoreHeapTuple(i32* %105, i32* %106, i32 0)
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = load i32*, i32** %14, align 8
  %112 = call i32 @heap_freetuple(i32* %111)
  br label %113

113:                                              ; preds = %110, %104
  store i32* null, i32** %9, align 8
  br label %114

114:                                              ; preds = %113, %100
  br label %115

115:                                              ; preds = %114
  br label %116

116:                                              ; preds = %115, %67, %57
  %117 = load i32, i32* %12, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %12, align 4
  br label %36

119:                                              ; preds = %36
  store i32 1, i32* %4, align 4
  br label %120

120:                                              ; preds = %119, %99
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i32 @TRIGGER_TYPE_MATCHES(i32, i32, i32, i32) #1

declare dso_local i32 @TriggerEnabled(i32*, %struct.TYPE_12__*, %struct.TYPE_11__*, i32, i32*, i32*, i32*) #1

declare dso_local i32* @ExecFetchSlotHeapTuple(i32*, i32, i32*) #1

declare dso_local i32* @ExecCallTriggerFunc(%struct.TYPE_10__*, i32, i32, i32, i32) #1

declare dso_local i32 @GetPerTupleMemoryContext(i32*) #1

declare dso_local i32 @heap_freetuple(i32*) #1

declare dso_local i32 @ExecForceStoreHeapTuple(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
