; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_validateRecoveryParameters.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_validateRecoveryParameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ArchiveRecoveryRequested = common dso_local global i32 0, align 4
@StandbyModeRequested = common dso_local global i64 0, align 8
@PrimaryConnInfo = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@recoveryRestoreCommand = common dso_local global i32* null, align 8
@WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"specified neither primary_conninfo nor restore_command\00", align 1
@.str.2 = private unnamed_addr constant [97 x i8] c"The database server will regularly poll the pg_wal subdirectory to check for files placed there.\00", align 1
@FATAL = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [62 x i8] c"must specify restore_command when standby mode is not enabled\00", align 1
@recoveryTargetAction = common dso_local global i64 0, align 8
@RECOVERY_TARGET_ACTION_PAUSE = common dso_local global i64 0, align 8
@EnableHotStandby = common dso_local global i32 0, align 4
@RECOVERY_TARGET_ACTION_SHUTDOWN = common dso_local global i64 0, align 8
@recoveryTarget = common dso_local global i64 0, align 8
@RECOVERY_TARGET_TIME = common dso_local global i64 0, align 8
@timestamptz_in = common dso_local global i32 0, align 4
@recovery_target_time_string = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@recoveryTargetTime = common dso_local global i32 0, align 4
@recoveryTargetTimeLineGoal = common dso_local global i64 0, align 8
@RECOVERY_TARGET_TIMELINE_NUMERIC = common dso_local global i64 0, align 8
@recoveryTargetTLIRequested = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"recovery target timeline %u does not exist\00", align 1
@recoveryTargetTLI = common dso_local global i32 0, align 4
@RECOVERY_TARGET_TIMELINE_LATEST = common dso_local global i64 0, align 8
@RECOVERY_TARGET_TIMELINE_CONTROLFILE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @validateRecoveryParameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @validateRecoveryParameters() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @ArchiveRecoveryRequested, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  br label %99

5:                                                ; preds = %0
  %6 = load i64, i64* @StandbyModeRequested, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %28

8:                                                ; preds = %5
  %9 = load i32*, i32** @PrimaryConnInfo, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = load i32*, i32** @PrimaryConnInfo, align 8
  %13 = call i64 @strcmp(i32* %12, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %11, %8
  %16 = load i32*, i32** @recoveryRestoreCommand, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load i32*, i32** @recoveryRestoreCommand, align 8
  %20 = call i64 @strcmp(i32* %19, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18, %15
  %23 = load i32, i32* @WARNING, align 4
  %24 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 @errhint(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.2, i64 0, i64 0))
  %26 = call i32 @ereport(i32 %23, i32 %25)
  br label %27

27:                                               ; preds = %22, %18, %11
  br label %42

28:                                               ; preds = %5
  %29 = load i32*, i32** @recoveryRestoreCommand, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = load i32*, i32** @recoveryRestoreCommand, align 8
  %33 = call i64 @strcmp(i32* %32, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31, %28
  %36 = load i32, i32* @FATAL, align 4
  %37 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %38 = call i32 @errcode(i32 %37)
  %39 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0))
  %40 = call i32 @ereport(i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %35, %31
  br label %42

42:                                               ; preds = %41, %27
  %43 = load i64, i64* @recoveryTargetAction, align 8
  %44 = load i64, i64* @RECOVERY_TARGET_ACTION_PAUSE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i32, i32* @EnableHotStandby, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = load i64, i64* @RECOVERY_TARGET_ACTION_SHUTDOWN, align 8
  store i64 %50, i64* @recoveryTargetAction, align 8
  br label %51

51:                                               ; preds = %49, %46, %42
  %52 = load i64, i64* @recoveryTarget, align 8
  %53 = load i64, i64* @RECOVERY_TARGET_TIME, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = load i32, i32* @timestamptz_in, align 4
  %57 = load i32, i32* @recovery_target_time_string, align 4
  %58 = call i32 @CStringGetDatum(i32 %57)
  %59 = load i32, i32* @InvalidOid, align 4
  %60 = call i32 @ObjectIdGetDatum(i32 %59)
  %61 = call i32 @Int32GetDatum(i32 -1)
  %62 = call i32 @DirectFunctionCall3(i32 %56, i32 %58, i32 %60, i32 %61)
  %63 = call i32 @DatumGetTimestampTz(i32 %62)
  store i32 %63, i32* @recoveryTargetTime, align 4
  br label %64

64:                                               ; preds = %55, %51
  %65 = load i64, i64* @recoveryTargetTimeLineGoal, align 8
  %66 = load i64, i64* @RECOVERY_TARGET_TIMELINE_NUMERIC, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %85

68:                                               ; preds = %64
  %69 = load i32, i32* @recoveryTargetTLIRequested, align 4
  store i32 %69, i32* %1, align 4
  %70 = load i32, i32* %1, align 4
  %71 = icmp ne i32 %70, 1
  br i1 %71, label %72, label %83

72:                                               ; preds = %68
  %73 = load i32, i32* %1, align 4
  %74 = call i32 @existsTimeLineHistory(i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* @FATAL, align 4
  %78 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %79 = call i32 @errcode(i32 %78)
  %80 = load i32, i32* %1, align 4
  %81 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %80)
  %82 = call i32 @ereport(i32 %77, i32 %81)
  br label %83

83:                                               ; preds = %76, %72, %68
  %84 = load i32, i32* %1, align 4
  store i32 %84, i32* @recoveryTargetTLI, align 4
  br label %99

85:                                               ; preds = %64
  %86 = load i64, i64* @recoveryTargetTimeLineGoal, align 8
  %87 = load i64, i64* @RECOVERY_TARGET_TIMELINE_LATEST, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load i32, i32* @recoveryTargetTLI, align 4
  %91 = call i32 @findNewestTimeLine(i32 %90)
  store i32 %91, i32* @recoveryTargetTLI, align 4
  br label %98

92:                                               ; preds = %85
  %93 = load i64, i64* @recoveryTargetTimeLineGoal, align 8
  %94 = load i64, i64* @RECOVERY_TARGET_TIMELINE_CONTROLFILE, align 8
  %95 = icmp eq i64 %93, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @Assert(i32 %96)
  br label %98

98:                                               ; preds = %92, %89
  br label %99

99:                                               ; preds = %4, %98, %83
  ret void
}

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @DatumGetTimestampTz(i32) #1

declare dso_local i32 @DirectFunctionCall3(i32, i32, i32, i32) #1

declare dso_local i32 @CStringGetDatum(i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @existsTimeLineHistory(i32) #1

declare dso_local i32 @findNewestTimeLine(i32) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
