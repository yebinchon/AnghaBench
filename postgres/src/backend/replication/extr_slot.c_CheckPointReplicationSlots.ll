; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_slot.c_CheckPointReplicationSlots.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_slot.c_CheckPointReplicationSlots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@DEBUG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"performing replication slot checkpoint\00", align 1
@ReplicationSlotAllocationLock = common dso_local global i32 0, align 4
@LW_SHARED = common dso_local global i32 0, align 4
@max_replication_slots = common dso_local global i32 0, align 4
@ReplicationSlotCtl = common dso_local global %struct.TYPE_7__* null, align 8
@MAXPGPATH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"pg_replslot/%s\00", align 1
@LOG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CheckPointReplicationSlots() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @DEBUG1, align 4
  %7 = call i32 @elog(i32 %6, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @ReplicationSlotAllocationLock, align 4
  %9 = load i32, i32* @LW_SHARED, align 4
  %10 = call i32 @LWLockAcquire(i32 %8, i32 %9)
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %45, %0
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @max_replication_slots, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %48

15:                                               ; preds = %11
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ReplicationSlotCtl, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i64 %20
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %2, align 8
  %22 = load i32, i32* @MAXPGPATH, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %3, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %4, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %15
  store i32 4, i32* %5, align 4
  br label %41

31:                                               ; preds = %15
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @NameStr(i32 %35)
  %37 = call i32 @sprintf(i8* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %39 = load i32, i32* @LOG, align 4
  %40 = call i32 @SaveSlotToPath(%struct.TYPE_6__* %38, i8* %25, i32 %39)
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %31, %30
  %42 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %42)
  %43 = load i32, i32* %5, align 4
  switch i32 %43, label %51 [
    i32 0, label %44
    i32 4, label %45
  ]

44:                                               ; preds = %41
  br label %45

45:                                               ; preds = %44, %41
  %46 = load i32, i32* %1, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %1, align 4
  br label %11

48:                                               ; preds = %11
  %49 = load i32, i32* @ReplicationSlotAllocationLock, align 4
  %50 = call i32 @LWLockRelease(i32 %49)
  ret void

51:                                               ; preds = %41
  unreachable
}

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i8* @NameStr(i32) #1

declare dso_local i32 @SaveSlotToPath(%struct.TYPE_6__*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @LWLockRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
