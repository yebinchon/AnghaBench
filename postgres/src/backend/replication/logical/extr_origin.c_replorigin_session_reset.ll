; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_origin.c_replorigin_session_reset.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_origin.c_replorigin_session_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@max_replication_slots = common dso_local global i64 0, align 8
@session_replication_state = common dso_local global %struct.TYPE_2__* null, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"no replication origin is configured\00", align 1
@ReplicationOriginLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @replorigin_session_reset() #0 {
  %1 = alloca i32*, align 8
  %2 = load i64, i64* @max_replication_slots, align 8
  %3 = icmp ne i64 %2, 0
  %4 = zext i1 %3 to i32
  %5 = call i32 @Assert(i32 %4)
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @session_replication_state, align 8
  %7 = icmp eq %struct.TYPE_2__* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %0
  %9 = load i32, i32* @ERROR, align 4
  %10 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %11 = call i32 @errcode(i32 %10)
  %12 = call i32 @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @ereport(i32 %9, i32 %12)
  br label %14

14:                                               ; preds = %8, %0
  %15 = load i32, i32* @ReplicationOriginLock, align 4
  %16 = load i32, i32* @LW_EXCLUSIVE, align 4
  %17 = call i32 @LWLockAcquire(i32 %15, i32 %16)
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @session_replication_state, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @session_replication_state, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32* %21, i32** %1, align 8
  store %struct.TYPE_2__* null, %struct.TYPE_2__** @session_replication_state, align 8
  %22 = load i32, i32* @ReplicationOriginLock, align 4
  %23 = call i32 @LWLockRelease(i32 %22)
  %24 = load i32*, i32** %1, align 8
  %25 = call i32 @ConditionVariableBroadcast(i32* %24)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @ConditionVariableBroadcast(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
