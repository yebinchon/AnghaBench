; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_trigger.c_ExecBRDeleteTriggers.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_trigger.c_ExecBRDeleteTriggers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_13__*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32 }

@LockTupleExclusive = common dso_local global i32 0, align 4
@T_TriggerData = common dso_local global i32 0, align 4
@TRIGGER_EVENT_DELETE = common dso_local global i32 0, align 4
@TRIGGER_EVENT_ROW = common dso_local global i32 0, align 4
@TRIGGER_EVENT_BEFORE = common dso_local global i32 0, align 4
@TRIGGER_TYPE_ROW = common dso_local global i32 0, align 4
@TRIGGER_TYPE_BEFORE = common dso_local global i32 0, align 4
@TRIGGER_TYPE_DELETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ExecBRDeleteTriggers(i32* %0, i32* %1, %struct.TYPE_14__* %2, i32 %3, i32* %4, i32** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_12__, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32** %5, i32*** %13, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %26 = call i32* @ExecGetTriggerOldSlot(i32* %24, %struct.TYPE_14__* %25)
  store i32* %26, i32** %14, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  store %struct.TYPE_11__* %29, %struct.TYPE_11__** %15, align 8
  store i32 1, i32* %16, align 4
  store i32 0, i32* %19, align 4
  %30 = load i32*, i32** %12, align 8
  %31 = call i32 @HeapTupleIsValid(i32* %30)
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @ItemPointerIsValid(i32 %32)
  %34 = xor i32 %31, %33
  %35 = call i32 @Assert(i32 %34)
  %36 = load i32*, i32** %12, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %60

38:                                               ; preds = %6
  store i32* null, i32** %21, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @LockTupleExclusive, align 4
  %44 = load i32*, i32** %14, align 8
  %45 = call i32 @GetTupleForTrigger(i32* %39, i32* %40, %struct.TYPE_14__* %41, i32 %42, i32 %43, i32* %44, i32** %21)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  br label %155

48:                                               ; preds = %38
  %49 = load i32*, i32** %21, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load i32**, i32*** %13, align 8
  %53 = icmp ne i32** %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32*, i32** %21, align 8
  %56 = load i32**, i32*** %13, align 8
  store i32* %55, i32** %56, align 8
  store i32 0, i32* %7, align 4
  br label %155

57:                                               ; preds = %51, %48
  %58 = load i32*, i32** %14, align 8
  %59 = call i32* @ExecFetchSlotHeapTuple(i32* %58, i32 1, i32* %19)
  store i32* %59, i32** %18, align 8
  br label %65

60:                                               ; preds = %6
  %61 = load i32*, i32** %12, align 8
  store i32* %61, i32** %18, align 8
  %62 = load i32*, i32** %18, align 8
  %63 = load i32*, i32** %14, align 8
  %64 = call i32 @ExecForceStoreHeapTuple(i32* %62, i32* %63, i32 0)
  br label %65

65:                                               ; preds = %60, %57
  %66 = load i32, i32* @T_TriggerData, align 4
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 9
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* @TRIGGER_EVENT_DELETE, align 4
  %69 = load i32, i32* @TRIGGER_EVENT_ROW, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @TRIGGER_EVENT_BEFORE, align 4
  %72 = or i32 %70, %71
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  store i32 %72, i32* %73, align 8
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 8
  store i32 %76, i32* %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 2
  store i32* null, i32** %78, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 7
  store i32* null, i32** %79, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 3
  store i32* null, i32** %80, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 6
  store i32* null, i32** %81, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 5
  store i32* null, i32** %82, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 4
  store i32* null, i32** %83, align 8
  store i32 0, i32* %20, align 4
  br label %84

84:                                               ; preds = %144, %65
  %85 = load i32, i32* %20, align 4
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %147

90:                                               ; preds = %84
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %92, align 8
  %94 = load i32, i32* %20, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i64 %95
  store %struct.TYPE_13__* %96, %struct.TYPE_13__** %23, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @TRIGGER_TYPE_ROW, align 4
  %101 = load i32, i32* @TRIGGER_TYPE_BEFORE, align 4
  %102 = load i32, i32* @TRIGGER_TYPE_DELETE, align 4
  %103 = call i32 @TRIGGER_TYPE_MATCHES(i32 %99, i32 %100, i32 %101, i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %90
  br label %144

106:                                              ; preds = %90
  %107 = load i32*, i32** %8, align 8
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32*, i32** %14, align 8
  %113 = call i32 @TriggerEnabled(i32* %107, %struct.TYPE_14__* %108, %struct.TYPE_13__* %109, i32 %111, i32* null, i32* %112, i32* null)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %106
  br label %144

116:                                              ; preds = %106
  %117 = load i32*, i32** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 3
  store i32* %117, i32** %118, align 8
  %119 = load i32*, i32** %18, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 2
  store i32* %119, i32** %120, align 8
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  store %struct.TYPE_13__* %121, %struct.TYPE_13__** %122, align 8
  %123 = load i32, i32* %20, align 4
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32*, i32** %8, align 8
  %131 = call i32 @GetPerTupleMemoryContext(i32* %130)
  %132 = call i32* @ExecCallTriggerFunc(%struct.TYPE_12__* %17, i32 %123, i32 %126, i32 %129, i32 %131)
  store i32* %132, i32** %22, align 8
  %133 = load i32*, i32** %22, align 8
  %134 = icmp eq i32* %133, null
  br i1 %134, label %135, label %136

135:                                              ; preds = %116
  store i32 0, i32* %16, align 4
  br label %147

136:                                              ; preds = %116
  %137 = load i32*, i32** %22, align 8
  %138 = load i32*, i32** %18, align 8
  %139 = icmp ne i32* %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = load i32*, i32** %22, align 8
  %142 = call i32 @heap_freetuple(i32* %141)
  br label %143

143:                                              ; preds = %140, %136
  br label %144

144:                                              ; preds = %143, %115, %105
  %145 = load i32, i32* %20, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %20, align 4
  br label %84

147:                                              ; preds = %135, %84
  %148 = load i32, i32* %19, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load i32*, i32** %18, align 8
  %152 = call i32 @heap_freetuple(i32* %151)
  br label %153

153:                                              ; preds = %150, %147
  %154 = load i32, i32* %16, align 4
  store i32 %154, i32* %7, align 4
  br label %155

155:                                              ; preds = %153, %54, %47
  %156 = load i32, i32* %7, align 4
  ret i32 %156
}

declare dso_local i32* @ExecGetTriggerOldSlot(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32*) #1

declare dso_local i32 @ItemPointerIsValid(i32) #1

declare dso_local i32 @GetTupleForTrigger(i32*, i32*, %struct.TYPE_14__*, i32, i32, i32*, i32**) #1

declare dso_local i32* @ExecFetchSlotHeapTuple(i32*, i32, i32*) #1

declare dso_local i32 @ExecForceStoreHeapTuple(i32*, i32*, i32) #1

declare dso_local i32 @TRIGGER_TYPE_MATCHES(i32, i32, i32, i32) #1

declare dso_local i32 @TriggerEnabled(i32*, %struct.TYPE_14__*, %struct.TYPE_13__*, i32, i32*, i32*, i32*) #1

declare dso_local i32* @ExecCallTriggerFunc(%struct.TYPE_12__*, i32, i32, i32, i32) #1

declare dso_local i32 @GetPerTupleMemoryContext(i32*) #1

declare dso_local i32 @heap_freetuple(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
