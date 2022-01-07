; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_origin.c_replorigin_session_setup.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_origin.c_replorigin_session_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64, i32 }

@replorigin_session_setup.registered_cleanup = internal global i32 0, align 4
@ReplicationOriginExitCleanup = common dso_local global i32 0, align 4
@max_replication_slots = common dso_local global i32 0, align 4
@session_replication_state = common dso_local global %struct.TYPE_4__* null, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"cannot setup replication origin when one is already setup\00", align 1
@ReplicationOriginLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@replication_states = common dso_local global %struct.TYPE_4__* null, align 8
@InvalidRepOriginId = common dso_local global i64 0, align 8
@ERRCODE_OBJECT_IN_USE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"replication origin with OID %d is already active for PID %d\00", align 1
@ERRCODE_CONFIGURATION_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [78 x i8] c"could not find free replication state slot for replication origin with OID %u\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Increase max_replication_slots and try again.\00", align 1
@InvalidXLogRecPtr = common dso_local global i64 0, align 8
@MyProcPid = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @replorigin_session_setup(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  store i64 %0, i64* %2, align 8
  store i32 -1, i32* %4, align 4
  %6 = load i32, i32* @replorigin_session_setup.registered_cleanup, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ReplicationOriginExitCleanup, align 4
  %10 = call i32 @on_shmem_exit(i32 %9, i32 0)
  store i32 1, i32* @replorigin_session_setup.registered_cleanup, align 4
  br label %11

11:                                               ; preds = %8, %1
  %12 = load i32, i32* @max_replication_slots, align 4
  %13 = icmp sgt i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @Assert(i32 %14)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @session_replication_state, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %11
  %19 = load i32, i32* @ERROR, align 4
  %20 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %21 = call i32 @errcode(i32 %20)
  %22 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @ereport(i32 %19, i32 %22)
  br label %24

24:                                               ; preds = %18, %11
  %25 = load i32, i32* @ReplicationOriginLock, align 4
  %26 = load i32, i32* @LW_EXCLUSIVE, align 4
  %27 = call i32 @LWLockAcquire(i32 %25, i32 %26)
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %74, %24
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @max_replication_slots, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %77

32:                                               ; preds = %28
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @replication_states, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  store %struct.TYPE_4__* %36, %struct.TYPE_4__** %5, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @InvalidRepOriginId, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %32
  %43 = load i32, i32* %4, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* %3, align 4
  store i32 %46, i32* %4, align 4
  br label %74

47:                                               ; preds = %42, %32
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %2, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %74

54:                                               ; preds = %47
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %54
  %60 = load i32, i32* @ERROR, align 4
  %61 = load i32, i32* @ERRCODE_OBJECT_IN_USE, align 4
  %62 = call i32 @errcode(i32 %61)
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i64 %65, i64 %68)
  %70 = call i32 @ereport(i32 %60, i32 %69)
  br label %71

71:                                               ; preds = %59, %54
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %73, %struct.TYPE_4__** @session_replication_state, align 8
  br label %74

74:                                               ; preds = %72, %53, %45
  %75 = load i32, i32* %3, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %3, align 4
  br label %28

77:                                               ; preds = %28
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** @session_replication_state, align 8
  %79 = icmp eq %struct.TYPE_4__* %78, null
  br i1 %79, label %80, label %91

80:                                               ; preds = %77
  %81 = load i32, i32* %4, align 4
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %91

83:                                               ; preds = %80
  %84 = load i32, i32* @ERROR, align 4
  %85 = load i32, i32* @ERRCODE_CONFIGURATION_LIMIT_EXCEEDED, align 4
  %86 = call i32 @errcode(i32 %85)
  %87 = load i64, i64* %2, align 8
  %88 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0), i64 %87)
  %89 = call i32 @errhint(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %90 = call i32 @ereport(i32 %84, i32 %89)
  br label %117

91:                                               ; preds = %80, %77
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** @session_replication_state, align 8
  %93 = icmp eq %struct.TYPE_4__* %92, null
  br i1 %93, label %94, label %116

94:                                               ; preds = %91
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** @replication_states, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 %97
  store %struct.TYPE_4__* %98, %struct.TYPE_4__** @session_replication_state, align 8
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** @session_replication_state, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @InvalidXLogRecPtr, align 8
  %103 = icmp eq i64 %101, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 @Assert(i32 %104)
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** @session_replication_state, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @InvalidXLogRecPtr, align 8
  %110 = icmp eq i64 %108, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 @Assert(i32 %111)
  %113 = load i64, i64* %2, align 8
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** @session_replication_state, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  br label %116

116:                                              ; preds = %94, %91
  br label %117

117:                                              ; preds = %116, %83
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** @session_replication_state, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @InvalidRepOriginId, align 8
  %122 = icmp ne i64 %120, %121
  %123 = zext i1 %122 to i32
  %124 = call i32 @Assert(i32 %123)
  %125 = load i64, i64* @MyProcPid, align 8
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** @session_replication_state, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  store i64 %125, i64* %127, align 8
  %128 = load i32, i32* @ReplicationOriginLock, align 4
  %129 = call i32 @LWLockRelease(i32 %128)
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** @session_replication_state, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 4
  %132 = call i32 @ConditionVariableBroadcast(i32* %131)
  ret void
}

declare dso_local i32 @on_shmem_exit(i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @ConditionVariableBroadcast(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
