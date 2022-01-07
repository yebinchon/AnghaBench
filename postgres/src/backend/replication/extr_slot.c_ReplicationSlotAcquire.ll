; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_slot.c_ReplicationSlotAcquire.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_slot.c_ReplicationSlotAcquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }

@MyReplicationSlot = common dso_local global %struct.TYPE_6__* null, align 8
@ReplicationSlotControlLock = common dso_local global i32 0, align 4
@LW_SHARED = common dso_local global i32 0, align 4
@max_replication_slots = common dso_local global i32 0, align 4
@ReplicationSlotCtl = common dso_local global %struct.TYPE_7__* null, align 8
@IsUnderPostmaster = common dso_local global i64 0, align 8
@MyProcPid = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"replication slot \22%s\22 does not exist\00", align 1
@ERRCODE_OBJECT_IN_USE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"replication slot \22%s\22 is active for PID %d\00", align 1
@WAIT_EVENT_REPLICATION_SLOT_DROP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ReplicationSlotAcquire(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %9

9:                                                ; preds = %99, %2
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MyReplicationSlot, align 8
  %11 = icmp eq %struct.TYPE_6__* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @Assert(i32 %12)
  store i32 0, i32* %6, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  %14 = load i32, i32* @ReplicationSlotControlLock, align 4
  %15 = load i32, i32* @LW_SHARED, align 4
  %16 = call i32 @LWLockAcquire(i32 %14, i32 %15)
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %69, %9
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @max_replication_slots, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %72

21:                                               ; preds = %17
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ReplicationSlotCtl, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %26
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %8, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %68

32:                                               ; preds = %21
  %33 = load i8*, i8** %3, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @NameStr(i32 %37)
  %39 = call i64 @strcmp(i8* %33, i32 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %68

41:                                               ; preds = %32
  %42 = load i64, i64* @IsUnderPostmaster, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %64

44:                                               ; preds = %41
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = call i32 @ConditionVariablePrepareToSleep(i32* %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = call i32 @SpinLockAcquire(i32* %49)
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %44
  %57 = load i32, i32* @MyProcPid, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  store i32 %57, i32* %6, align 4
  br label %60

60:                                               ; preds = %56, %44
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = call i32 @SpinLockRelease(i32* %62)
  br label %66

64:                                               ; preds = %41
  %65 = load i32, i32* @MyProcPid, align 4
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %64, %60
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %67, %struct.TYPE_6__** %5, align 8
  br label %72

68:                                               ; preds = %32, %21
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %17

72:                                               ; preds = %66, %17
  %73 = load i32, i32* @ReplicationSlotControlLock, align 4
  %74 = call i32 @LWLockRelease(i32 %73)
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %76 = icmp eq %struct.TYPE_6__* %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load i32, i32* @ERROR, align 4
  %79 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %80 = call i32 @errcode(i32 %79)
  %81 = load i8*, i8** %3, align 8
  %82 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %81)
  %83 = call i32 @ereport(i32 %78, i32 %82)
  br label %84

84:                                               ; preds = %77, %72
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @MyProcPid, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %105

88:                                               ; preds = %84
  %89 = load i32, i32* %4, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %88
  %92 = load i32, i32* @ERROR, align 4
  %93 = load i32, i32* @ERRCODE_OBJECT_IN_USE, align 4
  %94 = call i32 @errcode(i32 %93)
  %95 = load i8*, i8** %3, align 8
  %96 = load i32, i32* %6, align 4
  %97 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %95, i32 %96)
  %98 = call i32 @ereport(i32 %92, i32 %97)
  br label %99

99:                                               ; preds = %91, %88
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i32, i32* @WAIT_EVENT_REPLICATION_SLOT_DROP, align 4
  %103 = call i32 @ConditionVariableSleep(i32* %101, i32 %102)
  %104 = call i32 (...) @ConditionVariableCancelSleep()
  br label %9

105:                                              ; preds = %84
  %106 = call i32 (...) @ConditionVariableCancelSleep()
  br label %107

107:                                              ; preds = %105
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = call i32 @ConditionVariableBroadcast(i32* %109)
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %111, %struct.TYPE_6__** @MyReplicationSlot, align 8
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @ConditionVariablePrepareToSleep(i32*) #1

declare dso_local i32 @SpinLockAcquire(i32*) #1

declare dso_local i32 @SpinLockRelease(i32*) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, ...) #1

declare dso_local i32 @ConditionVariableSleep(i32*, i32) #1

declare dso_local i32 @ConditionVariableCancelSleep(...) #1

declare dso_local i32 @ConditionVariableBroadcast(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
