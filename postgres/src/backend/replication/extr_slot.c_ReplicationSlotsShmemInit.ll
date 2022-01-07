; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_slot.c_ReplicationSlotsShmemInit.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_slot.c_ReplicationSlotsShmemInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32 }

@max_replication_slots = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"ReplicationSlot Ctl\00", align 1
@ReplicationSlotCtl = common dso_local global %struct.TYPE_5__* null, align 8
@LWTRANCHE_REPLICATION_SLOT_IO_IN_PROGRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"replication_slot_io\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ReplicationSlotsShmemInit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = load i32, i32* @max_replication_slots, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %44

7:                                                ; preds = %0
  %8 = call i32 (...) @ReplicationSlotsShmemSize()
  %9 = call i64 @ShmemInitStruct(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %8, i32* %1)
  %10 = inttoptr i64 %9 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** @ReplicationSlotCtl, align 8
  %11 = load i32, i32* @LWTRANCHE_REPLICATION_SLOT_IO_IN_PROGRESS, align 4
  %12 = call i32 @LWLockRegisterTranche(i32 %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32, i32* %1, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %44, label %15

15:                                               ; preds = %7
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ReplicationSlotCtl, align 8
  %17 = call i32 (...) @ReplicationSlotsShmemSize()
  %18 = call i32 @MemSet(%struct.TYPE_5__* %16, i32 0, i32 %17)
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %40, %15
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @max_replication_slots, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %19
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ReplicationSlotCtl, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %28
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %3, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = call i32 @SpinLockInit(i32* %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* @LWTRANCHE_REPLICATION_SLOT_IO_IN_PROGRESS, align 4
  %36 = call i32 @LWLockInitialize(i32* %34, i32 %35)
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = call i32 @ConditionVariableInit(i32* %38)
  br label %40

40:                                               ; preds = %23
  %41 = load i32, i32* %2, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %2, align 4
  br label %19

43:                                               ; preds = %19
  br label %44

44:                                               ; preds = %6, %43, %7
  ret void
}

declare dso_local i64 @ShmemInitStruct(i8*, i32, i32*) #1

declare dso_local i32 @ReplicationSlotsShmemSize(...) #1

declare dso_local i32 @LWLockRegisterTranche(i32, i8*) #1

declare dso_local i32 @MemSet(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @SpinLockInit(i32*) #1

declare dso_local i32 @LWLockInitialize(i32*, i32) #1

declare dso_local i32 @ConditionVariableInit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
