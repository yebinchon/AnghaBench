; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_origin.c_ReplicationOriginShmemInit.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_origin.c_ReplicationOriginShmemInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@max_replication_slots = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"ReplicationOriginState\00", align 1
@replication_states_ctl = common dso_local global %struct.TYPE_5__* null, align 8
@replication_states = common dso_local global %struct.TYPE_6__* null, align 8
@LWTRANCHE_REPLICATION_ORIGIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"replication_origin\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ReplicationOriginShmemInit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @max_replication_slots, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %51

6:                                                ; preds = %0
  %7 = call i32 (...) @ReplicationOriginShmemSize()
  %8 = call i64 @ShmemInitStruct(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %7, i32* %1)
  %9 = inttoptr i64 %8 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** @replication_states_ctl, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @replication_states_ctl, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** @replication_states, align 8
  %13 = load i32, i32* %1, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %46, label %15

15:                                               ; preds = %6
  %16 = load i32, i32* @LWTRANCHE_REPLICATION_ORIGIN, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @replication_states_ctl, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @replication_states, align 8
  %20 = call i32 (...) @ReplicationOriginShmemSize()
  %21 = call i32 @MemSet(%struct.TYPE_6__* %19, i32 0, i32 %20)
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %42, %15
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @max_replication_slots, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %22
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @replication_states, align 8
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** @replication_states_ctl, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @LWLockInitialize(i32* %31, i32 %34)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @replication_states, align 8
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = call i32 @ConditionVariableInit(i32* %40)
  br label %42

42:                                               ; preds = %26
  %43 = load i32, i32* %2, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %2, align 4
  br label %22

45:                                               ; preds = %22
  br label %46

46:                                               ; preds = %45, %6
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** @replication_states_ctl, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @LWLockRegisterTranche(i32 %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %46, %5
  ret void
}

declare dso_local i64 @ShmemInitStruct(i8*, i32, i32*) #1

declare dso_local i32 @ReplicationOriginShmemSize(...) #1

declare dso_local i32 @MemSet(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @LWLockInitialize(i32*, i32) #1

declare dso_local i32 @ConditionVariableInit(i32*) #1

declare dso_local i32 @LWLockRegisterTranche(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
