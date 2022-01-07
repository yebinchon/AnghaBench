; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_slot.c_ReplicationSlotsDropDBSlots.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_slot.c_ReplicationSlotsDropDBSlots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64, i32 }

@max_replication_slots = common dso_local global i32 0, align 4
@ReplicationSlotControlLock = common dso_local global i32 0, align 4
@LW_SHARED = common dso_local global i32 0, align 4
@ReplicationSlotCtl = common dso_local global %struct.TYPE_8__* null, align 8
@MyReplicationSlot = common dso_local global %struct.TYPE_7__* null, align 8
@MyProcPid = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_OBJECT_IN_USE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"replication slot \22%s\22 is active for PID %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ReplicationSlotsDropDBSlots(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i32, i32* @max_replication_slots, align 4
  %8 = icmp sle i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %87

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %77, %10
  %12 = load i32, i32* @ReplicationSlotControlLock, align 4
  %13 = load i32, i32* @LW_SHARED, align 4
  %14 = call i32 @LWLockAcquire(i32 %12, i32 %13)
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %81, %11
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @max_replication_slots, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %84

19:                                               ; preds = %15
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ReplicationSlotCtl, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i64 %24
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %4, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %19
  br label %81

31:                                               ; preds = %19
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = call i32 @SlotIsLogical(%struct.TYPE_7__* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  br label %81

36:                                               ; preds = %31
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %2, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %81

44:                                               ; preds = %36
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = call i32 @SpinLockAcquire(i32* %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i8* @NameStr(i32 %51)
  store i8* %52, i8** %5, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %44
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %59, %struct.TYPE_7__** @MyReplicationSlot, align 8
  %60 = load i32, i32* @MyProcPid, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %58, %44
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = call i32 @SpinLockRelease(i32* %65)
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %63
  %70 = load i32, i32* @ERROR, align 4
  %71 = load i32, i32* @ERRCODE_OBJECT_IN_USE, align 4
  %72 = call i32 @errcode(i32 %71)
  %73 = load i8*, i8** %5, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %73, i32 %74)
  %76 = call i32 @ereport(i32 %70, i32 %75)
  br label %77

77:                                               ; preds = %69, %63
  %78 = load i32, i32* @ReplicationSlotControlLock, align 4
  %79 = call i32 @LWLockRelease(i32 %78)
  %80 = call i32 (...) @ReplicationSlotDropAcquired()
  br label %11

81:                                               ; preds = %43, %35, %30
  %82 = load i32, i32* %3, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %3, align 4
  br label %15

84:                                               ; preds = %15
  %85 = load i32, i32* @ReplicationSlotControlLock, align 4
  %86 = call i32 @LWLockRelease(i32 %85)
  br label %87

87:                                               ; preds = %84, %9
  ret void
}

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @SlotIsLogical(%struct.TYPE_7__*) #1

declare dso_local i32 @SpinLockAcquire(i32*) #1

declare dso_local i8* @NameStr(i32) #1

declare dso_local i32 @SpinLockRelease(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @ReplicationSlotDropAcquired(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
