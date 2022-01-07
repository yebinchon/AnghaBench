; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_deadlock.c_DeadLockReport.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_deadlock.c_DeadLockReport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }

@nDeadlockDetails = common dso_local global i32 0, align 4
@deadlockDetails = common dso_local global %struct.TYPE_13__* null, align 8
@.str = private unnamed_addr constant [54 x i8] c"Process %d waits for %s on %s; blocked by process %d.\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Process %d: %s\00", align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_T_R_DEADLOCK_DETECTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"deadlock detected\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"See server log for query details.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DeadLockReport() #0 {
  %1 = alloca %struct.TYPE_12__, align 4
  %2 = alloca %struct.TYPE_12__, align 4
  %3 = alloca %struct.TYPE_12__, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = call i32 @initStringInfo(%struct.TYPE_12__* %1)
  %9 = call i32 @initStringInfo(%struct.TYPE_12__* %2)
  %10 = call i32 @initStringInfo(%struct.TYPE_12__* %3)
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %60, %0
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @nDeadlockDetails, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %63

15:                                               ; preds = %11
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** @deadlockDetails, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i64 %18
  store %struct.TYPE_13__* %19, %struct.TYPE_13__** %5, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @nDeadlockDetails, align 4
  %22 = sub nsw i32 %21, 1
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %15
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i64 1
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %6, align 4
  br label %34

29:                                               ; preds = %15
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** @deadlockDetails, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %29, %24
  %35 = call i32 @resetStringInfo(%struct.TYPE_12__* %3)
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 2
  %38 = call i32 @DescribeLockTag(%struct.TYPE_12__* %3, %struct.TYPE_11__* %37)
  %39 = load i32, i32* %4, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = call i32 @appendStringInfoChar(%struct.TYPE_12__* %1, i8 signext 10)
  br label %43

43:                                               ; preds = %41, %34
  %44 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @GetLockmodeName(i32 %51, i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 (%struct.TYPE_12__*, i32, i32, i32, ...) @appendStringInfo(%struct.TYPE_12__* %1, i32 %44, i32 %47, i32 %55, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %43
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %11

63:                                               ; preds = %11
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @appendBinaryStringInfo(%struct.TYPE_12__* %2, i32 %65, i32 %67)
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %88, %63
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @nDeadlockDetails, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %91

73:                                               ; preds = %69
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** @deadlockDetails, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i64 %76
  store %struct.TYPE_13__* %77, %struct.TYPE_13__** %7, align 8
  %78 = call i32 @appendStringInfoChar(%struct.TYPE_12__* %2, i8 signext 10)
  %79 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @pgstat_get_backend_current_activity(i32 %85, i32 0)
  %87 = call i32 (%struct.TYPE_12__*, i32, i32, i32, ...) @appendStringInfo(%struct.TYPE_12__* %2, i32 %79, i32 %82, i32 %86)
  br label %88

88:                                               ; preds = %73
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %4, align 4
  br label %69

91:                                               ; preds = %69
  %92 = call i32 (...) @pgstat_report_deadlock()
  %93 = load i32, i32* @ERROR, align 4
  %94 = load i32, i32* @ERRCODE_T_R_DEADLOCK_DETECTED, align 4
  %95 = call i32 @errcode(i32 %94)
  %96 = call i32 @errmsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @errdetail_internal(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @errdetail_log(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %101)
  %103 = call i32 @errhint(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %104 = call i32 @ereport(i32 %93, i32 %103)
  ret void
}

declare dso_local i32 @initStringInfo(%struct.TYPE_12__*) #1

declare dso_local i32 @resetStringInfo(%struct.TYPE_12__*) #1

declare dso_local i32 @DescribeLockTag(%struct.TYPE_12__*, %struct.TYPE_11__*) #1

declare dso_local i32 @appendStringInfoChar(%struct.TYPE_12__*, i8 signext) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_12__*, i32, i32, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @GetLockmodeName(i32, i32) #1

declare dso_local i32 @appendBinaryStringInfo(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @pgstat_get_backend_current_activity(i32, i32) #1

declare dso_local i32 @pgstat_report_deadlock(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail_internal(i8*, i32) #1

declare dso_local i32 @errdetail_log(i8*, i32) #1

declare dso_local i32 @errhint(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
