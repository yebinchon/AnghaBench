; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_trigger.c_GetTupleForTrigger.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_trigger.c_GetTupleForTrigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@TUPLE_LOCK_FLAG_FIND_LAST_VERSION = common dso_local global i32 0, align 4
@LockWaitBlock = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_TRIGGERED_DATA_CHANGE_VIOLATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [90 x i8] c"tuple to be updated was already modified by an operation triggered by the current command\00", align 1
@.str.1 = private unnamed_addr constant [96 x i8] c"Consider using an AFTER trigger instead of a BEFORE trigger to propagate changes to other rows.\00", align 1
@ERRCODE_T_R_SERIALIZATION_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"could not serialize access due to concurrent update\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"unexpected table_tuple_lock status: %u\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"could not serialize access due to concurrent delete\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"attempted to lock invisible tuple\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"unrecognized table_tuple_lock status: %u\00", align 1
@SnapshotAny = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"failed to fetch tuple for trigger\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, %struct.TYPE_8__*, i32, i32, i32*, i32**)* @GetTupleForTrigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetTupleForTrigger(%struct.TYPE_9__* %0, i32* %1, %struct.TYPE_8__* %2, i32 %3, i32 %4, i32* %5, i32** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_7__, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %9, align 8
  store i32* %1, i32** %10, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32** %6, i32*** %15, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %16, align 4
  %23 = load i32**, i32*** %15, align 8
  %24 = icmp ne i32** %23, null
  br i1 %24, label %25, label %119

25:                                               ; preds = %7
  store i32 0, i32* %19, align 4
  %26 = load i32**, i32*** %15, align 8
  store i32* null, i32** %26, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = icmp ne i32* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @Assert(i32 %29)
  %31 = call i64 (...) @IsolationUsesXactSnapshot()
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* @TUPLE_LOCK_FLAG_FIND_LAST_VERSION, align 4
  %35 = load i32, i32* %19, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %19, align 4
  br label %37

37:                                               ; preds = %33, %25
  %38 = load i32, i32* %16, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %14, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @LockWaitBlock, align 4
  %49 = load i32, i32* %19, align 4
  %50 = call i32 @table_tuple_lock(i32 %38, i32 %39, i32 %42, i32* %43, i32 %46, i32 %47, i32 %48, i32 %49, %struct.TYPE_7__* %18)
  store i32 %50, i32* %17, align 4
  %51 = load i32, i32* %17, align 4
  switch i32 %51, label %114 [
    i32 129, label %52
    i32 130, label %67
    i32 128, label %88
    i32 132, label %101
    i32 131, label %111
  ]

52:                                               ; preds = %37
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %54, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = load i32, i32* @ERROR, align 4
  %61 = load i32, i32* @ERRCODE_TRIGGERED_DATA_CHANGE_VIOLATION, align 4
  %62 = call i32 @errcode(i32 %61)
  %63 = call i32 @errmsg(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0))
  %64 = call i32 @errhint(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.1, i64 0, i64 0))
  %65 = call i32 @ereport(i32 %60, i32 %64)
  br label %66

66:                                               ; preds = %59, %52
  store i32 0, i32* %8, align 4
  br label %131

67:                                               ; preds = %37
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %67
  %72 = load i32*, i32** %10, align 8
  %73 = load i32, i32* %16, align 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %14, align 8
  %78 = call i32* @EvalPlanQual(i32* %72, i32 %73, i32 %76, i32* %77)
  %79 = load i32**, i32*** %15, align 8
  store i32* %78, i32** %79, align 8
  %80 = load i32**, i32*** %15, align 8
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @TupIsNull(i32* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %71
  %85 = load i32**, i32*** %15, align 8
  store i32* null, i32** %85, align 8
  store i32 0, i32* %8, align 4
  br label %131

86:                                               ; preds = %71
  br label %87

87:                                               ; preds = %86, %67
  br label %118

88:                                               ; preds = %37
  %89 = call i64 (...) @IsolationUsesXactSnapshot()
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load i32, i32* @ERROR, align 4
  %93 = load i32, i32* @ERRCODE_T_R_SERIALIZATION_FAILURE, align 4
  %94 = call i32 @errcode(i32 %93)
  %95 = call i32 @errmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %96 = call i32 @ereport(i32 %92, i32 %95)
  br label %97

97:                                               ; preds = %91, %88
  %98 = load i32, i32* @ERROR, align 4
  %99 = load i32, i32* %17, align 4
  %100 = call i32 (i32, i8*, ...) @elog(i32 %98, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %99)
  br label %118

101:                                              ; preds = %37
  %102 = call i64 (...) @IsolationUsesXactSnapshot()
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %101
  %105 = load i32, i32* @ERROR, align 4
  %106 = load i32, i32* @ERRCODE_T_R_SERIALIZATION_FAILURE, align 4
  %107 = call i32 @errcode(i32 %106)
  %108 = call i32 @errmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  %109 = call i32 @ereport(i32 %105, i32 %108)
  br label %110

110:                                              ; preds = %104, %101
  store i32 0, i32* %8, align 4
  br label %131

111:                                              ; preds = %37
  %112 = load i32, i32* @ERROR, align 4
  %113 = call i32 (i32, i8*, ...) @elog(i32 %112, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %118

114:                                              ; preds = %37
  %115 = load i32, i32* @ERROR, align 4
  %116 = load i32, i32* %17, align 4
  %117 = call i32 (i32, i8*, ...) @elog(i32 %115, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %116)
  store i32 0, i32* %8, align 4
  br label %131

118:                                              ; preds = %111, %97, %87
  br label %130

119:                                              ; preds = %7
  %120 = load i32, i32* %16, align 4
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* @SnapshotAny, align 4
  %123 = load i32*, i32** %14, align 8
  %124 = call i32 @table_tuple_fetch_row_version(i32 %120, i32 %121, i32 %122, i32* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %119
  %127 = load i32, i32* @ERROR, align 4
  %128 = call i32 (i32, i8*, ...) @elog(i32 %127, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  br label %129

129:                                              ; preds = %126, %119
  br label %130

130:                                              ; preds = %129, %118
  store i32 1, i32* %8, align 4
  br label %131

131:                                              ; preds = %130, %114, %110, %84, %66
  %132 = load i32, i32* %8, align 4
  ret i32 %132
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @IsolationUsesXactSnapshot(...) #1

declare dso_local i32 @table_tuple_lock(i32, i32, i32, i32*, i32, i32, i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32* @EvalPlanQual(i32*, i32, i32, i32*) #1

declare dso_local i32 @TupIsNull(i32*) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @table_tuple_fetch_row_version(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
