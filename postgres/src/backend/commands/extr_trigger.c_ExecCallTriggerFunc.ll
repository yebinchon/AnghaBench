; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_trigger.c_ExecCallTriggerFunc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_trigger.c_ExecCallTriggerFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_15__*, i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__*, i32*, i32* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_17__ = type { i64 }

@fcinfo = common dso_local global %struct.TYPE_18__* null, align 8
@AFTER_TRIGGER_DEFERRABLE = common dso_local global i32 0, align 4
@AFTER_TRIGGER_INITDEFERRED = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i64 0, align 8
@MyTriggerDepth = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_E_R_I_E_TRIGGER_PROTOCOL_VIOLATED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"trigger function %u returned null value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32, %struct.TYPE_17__*, i32*, i32)* @ExecCallTriggerFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ExecCallTriggerFunc(%struct.TYPE_16__* %0, i32 %1, %struct.TYPE_17__* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** @fcinfo, align 8
  %15 = call i32 @LOCAL_FCINFO(%struct.TYPE_18__* %14, i32 0)
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @TRIGGER_FIRED_BY_INSERT(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %5
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @TRIGGER_FIRED_BY_UPDATE(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @TRIGGER_FIRED_BY_DELETE(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %27, %21, %5
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @TRIGGER_FIRED_AFTER(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %33
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @AFTER_TRIGGER_DEFERRABLE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %39
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @AFTER_TRIGGER_INITDEFERRED, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %46, %39, %33, %27
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br label %63

63:                                               ; preds = %58, %53
  %64 = phi i1 [ false, %53 ], [ %62, %58 ]
  br label %65

65:                                               ; preds = %63, %46
  %66 = phi i1 [ true, %46 ], [ %64, %63 ]
  %67 = zext i1 %66 to i32
  %68 = call i32 @Assert(i32 %67)
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i64 %71
  store %struct.TYPE_17__* %72, %struct.TYPE_17__** %8, align 8
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @InvalidOid, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %65
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %85 = call i32 @fmgr_info(i64 %83, %struct.TYPE_17__* %84)
  br label %86

86:                                               ; preds = %78, %65
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %89, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @Assert(i32 %96)
  %98 = load i32*, i32** %9, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %106

100:                                              ; preds = %86
  %101 = load i32*, i32** %9, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = call i32 @InstrStartNode(i32* %104)
  br label %106

106:                                              ; preds = %100, %86
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @MemoryContextSwitchTo(i32 %107)
  store i32 %108, i32* %13, align 4
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** @fcinfo, align 8
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %111 = load i64, i64* @InvalidOid, align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %113 = bitcast %struct.TYPE_16__* %112 to i32*
  %114 = bitcast %struct.TYPE_18__* %109 to { %struct.TYPE_15__*, i64 }*
  %115 = getelementptr inbounds { %struct.TYPE_15__*, i64 }, { %struct.TYPE_15__*, i64 }* %114, i32 0, i32 0
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %115, align 8
  %117 = getelementptr inbounds { %struct.TYPE_15__*, i64 }, { %struct.TYPE_15__*, i64 }* %114, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @InitFunctionCallInfoData(%struct.TYPE_15__* %116, i64 %118, %struct.TYPE_17__* %110, i32 0, i64 %111, i32* %113, i32* null)
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** @fcinfo, align 8
  %121 = call i32 @pgstat_init_function_usage(%struct.TYPE_18__* %120, i32* %11)
  %122 = load i32, i32* @MyTriggerDepth, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* @MyTriggerDepth, align 4
  %124 = call i32 (...) @PG_TRY()
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** @fcinfo, align 8
  %126 = call i32 @FunctionCallInvoke(%struct.TYPE_18__* %125)
  store i32 %126, i32* %12, align 4
  %127 = call i32 (...) @PG_FINALLY()
  %128 = load i32, i32* @MyTriggerDepth, align 4
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* @MyTriggerDepth, align 4
  %130 = call i32 (...) @PG_END_TRY()
  %131 = call i32 @pgstat_end_function_usage(i32* %11, i32 1)
  %132 = load i32, i32* %13, align 4
  %133 = call i32 @MemoryContextSwitchTo(i32 %132)
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** @fcinfo, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %149

138:                                              ; preds = %106
  %139 = load i32, i32* @ERROR, align 4
  %140 = load i32, i32* @ERRCODE_E_R_I_E_TRIGGER_PROTOCOL_VIOLATED, align 4
  %141 = call i32 @errcode(i32 %140)
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** @fcinfo, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %146)
  %148 = call i32 @ereport(i32 %139, i32 %147)
  br label %149

149:                                              ; preds = %138, %106
  %150 = load i32*, i32** %9, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %158

152:                                              ; preds = %149
  %153 = load i32*, i32** %9, align 8
  %154 = load i32, i32* %7, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = call i32 @InstrStopNode(i32* %156, i32 1)
  br label %158

158:                                              ; preds = %152, %149
  %159 = load i32, i32* %12, align 4
  %160 = call i32 @DatumGetPointer(i32 %159)
  ret i32 %160
}

declare dso_local i32 @LOCAL_FCINFO(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @TRIGGER_FIRED_BY_INSERT(i32) #1

declare dso_local i64 @TRIGGER_FIRED_BY_UPDATE(i32) #1

declare dso_local i64 @TRIGGER_FIRED_BY_DELETE(i32) #1

declare dso_local i64 @TRIGGER_FIRED_AFTER(i32) #1

declare dso_local i32 @fmgr_info(i64, %struct.TYPE_17__*) #1

declare dso_local i32 @InstrStartNode(i32*) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @InitFunctionCallInfoData(%struct.TYPE_15__*, i64, %struct.TYPE_17__*, i32, i64, i32*, i32*) #1

declare dso_local i32 @pgstat_init_function_usage(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @PG_TRY(...) #1

declare dso_local i32 @FunctionCallInvoke(%struct.TYPE_18__*) #1

declare dso_local i32 @PG_FINALLY(...) #1

declare dso_local i32 @PG_END_TRY(...) #1

declare dso_local i32 @pgstat_end_function_usage(i32*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @InstrStopNode(i32*, i32) #1

declare dso_local i32 @DatumGetPointer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
