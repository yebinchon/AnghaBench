; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_trigger.c_ExecBSInsertTriggers.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_trigger.c_ExecBSInsertTriggers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_11__*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32 }

@CMD_INSERT = common dso_local global i32 0, align 4
@T_TriggerData = common dso_local global i32 0, align 4
@TRIGGER_EVENT_INSERT = common dso_local global i32 0, align 4
@TRIGGER_EVENT_BEFORE = common dso_local global i32 0, align 4
@TRIGGER_TYPE_STATEMENT = common dso_local global i32 0, align 4
@TRIGGER_TYPE_BEFORE = common dso_local global i32 0, align 4
@TRIGGER_TYPE_INSERT = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_E_R_I_E_TRIGGER_PROTOCOL_VIOLATED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"BEFORE STATEMENT trigger cannot return a value\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ExecBSInsertTriggers(i32* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %5, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = icmp eq %struct.TYPE_9__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %104

16:                                               ; preds = %2
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  br label %104

22:                                               ; preds = %16
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @RelationGetRelid(i32 %25)
  %27 = load i32, i32* @CMD_INSERT, align 4
  %28 = call i64 @before_stmt_triggers_fired(i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %104

31:                                               ; preds = %22
  %32 = load i32, i32* @T_TriggerData, align 4
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 9
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @TRIGGER_EVENT_INSERT, align 4
  %35 = load i32, i32* @TRIGGER_EVENT_BEFORE, align 4
  %36 = or i32 %34, %35
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  store i32 %36, i32* %37, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 8
  store i32 %40, i32* %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 7
  store i32* null, i32** %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 6
  store i32* null, i32** %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 5
  store i32* null, i32** %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 4
  store i32* null, i32** %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 3
  store i32* null, i32** %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 2
  store i32* null, i32** %47, align 8
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %101, %31
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %104

54:                                               ; preds = %48
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i64 %59
  store %struct.TYPE_11__* %60, %struct.TYPE_11__** %8, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @TRIGGER_TYPE_STATEMENT, align 4
  %65 = load i32, i32* @TRIGGER_TYPE_BEFORE, align 4
  %66 = load i32, i32* @TRIGGER_TYPE_INSERT, align 4
  %67 = call i32 @TRIGGER_TYPE_MATCHES(i32 %63, i32 %64, i32 %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %54
  br label %101

70:                                               ; preds = %54
  %71 = load i32*, i32** %3, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @TriggerEnabled(i32* %71, %struct.TYPE_12__* %72, %struct.TYPE_11__* %73, i32 %75, i32* null, i32* null, i32* null)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %70
  br label %101

79:                                               ; preds = %70
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  store %struct.TYPE_11__* %80, %struct.TYPE_11__** %81, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32*, i32** %3, align 8
  %90 = call i32 @GetPerTupleMemoryContext(i32* %89)
  %91 = call i64 @ExecCallTriggerFunc(%struct.TYPE_10__* %7, i32 %82, i32 %85, i32 %88, i32 %90)
  store i64 %91, i64* %9, align 8
  %92 = load i64, i64* %9, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %79
  %95 = load i32, i32* @ERROR, align 4
  %96 = load i32, i32* @ERRCODE_E_R_I_E_TRIGGER_PROTOCOL_VIOLATED, align 4
  %97 = call i32 @errcode(i32 %96)
  %98 = call i32 @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %99 = call i32 @ereport(i32 %95, i32 %98)
  br label %100

100:                                              ; preds = %94, %79
  br label %101

101:                                              ; preds = %100, %78, %69
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %6, align 4
  br label %48

104:                                              ; preds = %15, %21, %30, %48
  ret void
}

declare dso_local i64 @before_stmt_triggers_fired(i32, i32) #1

declare dso_local i32 @RelationGetRelid(i32) #1

declare dso_local i32 @TRIGGER_TYPE_MATCHES(i32, i32, i32, i32) #1

declare dso_local i32 @TriggerEnabled(i32*, %struct.TYPE_12__*, %struct.TYPE_11__*, i32, i32*, i32*, i32*) #1

declare dso_local i64 @ExecCallTriggerFunc(%struct.TYPE_10__*, i32, i32, i32, i32) #1

declare dso_local i32 @GetPerTupleMemoryContext(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
