; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_trigger.c_ExecBSUpdateTriggers.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_trigger.c_ExecBSUpdateTriggers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32 }

@CMD_UPDATE = common dso_local global i32 0, align 4
@T_TriggerData = common dso_local global i32 0, align 4
@TRIGGER_EVENT_UPDATE = common dso_local global i32 0, align 4
@TRIGGER_EVENT_BEFORE = common dso_local global i32 0, align 4
@TRIGGER_TYPE_STATEMENT = common dso_local global i32 0, align 4
@TRIGGER_TYPE_BEFORE = common dso_local global i32 0, align 4
@TRIGGER_TYPE_UPDATE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_E_R_I_E_TRIGGER_PROTOCOL_VIOLATED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"BEFORE STATEMENT trigger cannot return a value\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ExecBSUpdateTriggers(i32* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %5, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = icmp eq %struct.TYPE_10__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %109

17:                                               ; preds = %2
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %109

23:                                               ; preds = %17
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @RelationGetRelid(i32 %26)
  %28 = load i32, i32* @CMD_UPDATE, align 4
  %29 = call i64 @before_stmt_triggers_fired(i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %109

32:                                               ; preds = %23
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = call i32* @GetAllUpdatedColumns(%struct.TYPE_13__* %33, i32* %34)
  store i32* %35, i32** %8, align 8
  %36 = load i32, i32* @T_TriggerData, align 4
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 9
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @TRIGGER_EVENT_UPDATE, align 4
  %39 = load i32, i32* @TRIGGER_EVENT_BEFORE, align 4
  %40 = or i32 %38, %39
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store i32 %40, i32* %41, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 8
  store i32 %44, i32* %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 7
  store i32* null, i32** %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 6
  store i32* null, i32** %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 5
  store i32* null, i32** %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 4
  store i32* null, i32** %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 3
  store i32* null, i32** %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  store i32* null, i32** %51, align 8
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %106, %32
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %109

58:                                               ; preds = %52
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i64 %63
  store %struct.TYPE_12__* %64, %struct.TYPE_12__** %9, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @TRIGGER_TYPE_STATEMENT, align 4
  %69 = load i32, i32* @TRIGGER_TYPE_BEFORE, align 4
  %70 = load i32, i32* @TRIGGER_TYPE_UPDATE, align 4
  %71 = call i32 @TRIGGER_TYPE_MATCHES(i32 %67, i32 %68, i32 %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %58
  br label %106

74:                                               ; preds = %58
  %75 = load i32*, i32** %3, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @TriggerEnabled(i32* %75, %struct.TYPE_13__* %76, %struct.TYPE_12__* %77, i32 %79, i32* %80, i32* null, i32* null)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %74
  br label %106

84:                                               ; preds = %74
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  store %struct.TYPE_12__* %85, %struct.TYPE_12__** %86, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32*, i32** %3, align 8
  %95 = call i32 @GetPerTupleMemoryContext(i32* %94)
  %96 = call i64 @ExecCallTriggerFunc(%struct.TYPE_11__* %7, i32 %87, i32 %90, i32 %93, i32 %95)
  store i64 %96, i64* %10, align 8
  %97 = load i64, i64* %10, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %84
  %100 = load i32, i32* @ERROR, align 4
  %101 = load i32, i32* @ERRCODE_E_R_I_E_TRIGGER_PROTOCOL_VIOLATED, align 4
  %102 = call i32 @errcode(i32 %101)
  %103 = call i32 @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %104 = call i32 @ereport(i32 %100, i32 %103)
  br label %105

105:                                              ; preds = %99, %84
  br label %106

106:                                              ; preds = %105, %83, %73
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %6, align 4
  br label %52

109:                                              ; preds = %16, %22, %31, %52
  ret void
}

declare dso_local i64 @before_stmt_triggers_fired(i32, i32) #1

declare dso_local i32 @RelationGetRelid(i32) #1

declare dso_local i32* @GetAllUpdatedColumns(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @TRIGGER_TYPE_MATCHES(i32, i32, i32, i32) #1

declare dso_local i32 @TriggerEnabled(i32*, %struct.TYPE_13__*, %struct.TYPE_12__*, i32, i32*, i32*, i32*) #1

declare dso_local i64 @ExecCallTriggerFunc(%struct.TYPE_11__*, i32, i32, i32, i32) #1

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
