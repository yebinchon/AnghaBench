; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_slot.c_ReplicationSlotDropPtr.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_slot.c_ReplicationSlotDropPtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@MAXPGPATH = common dso_local global i32 0, align 4
@ReplicationSlotAllocationLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"pg_replslot/%s\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"pg_replslot/%s.tmp\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"pg_replslot\00", align 1
@RS_PERSISTENT = common dso_local global i64 0, align 8
@WARNING = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"could not rename file \22%s\22 to \22%s\22: %m\00", align 1
@ReplicationSlotControlLock = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"could not remove directory \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @ReplicationSlotDropPtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ReplicationSlotDropPtr(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %7 = load i32, i32* @MAXPGPATH, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = load i32, i32* @MAXPGPATH, align 4
  %12 = zext i32 %11 to i64
  %13 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  %14 = load i32, i32* @ReplicationSlotAllocationLock, align 4
  %15 = load i32, i32* @LW_EXCLUSIVE, align 4
  %16 = call i32 @LWLockAcquire(i32 %14, i32 %15)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i8* @NameStr(i32 %20)
  %22 = call i32 @sprintf(i8* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i8* @NameStr(i32 %26)
  %28 = call i32 @sprintf(i8* %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  %29 = call i64 @rename(i8* %10, i8* %13)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %1
  %32 = call i32 (...) @START_CRIT_SECTION()
  %33 = call i32 @fsync_fname(i8* %13, i32 1)
  %34 = call i32 @fsync_fname(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %35 = call i32 (...) @END_CRIT_SECTION()
  br label %66

36:                                               ; preds = %1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @RS_PERSISTENT, align 8
  %42 = icmp ne i64 %40, %41
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %6, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 3
  %46 = call i32 @SpinLockAcquire(i32* %45)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 3
  %51 = call i32 @SpinLockRelease(i32* %50)
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = call i32 @ConditionVariableBroadcast(i32* %53)
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %36
  %58 = load i32, i32* @WARNING, align 4
  br label %61

59:                                               ; preds = %36
  %60 = load i32, i32* @ERROR, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  %63 = call i32 (...) @errcode_for_file_access()
  %64 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %10, i8* %13)
  %65 = call i32 @ereport(i32 %62, i32 %64)
  br label %66

66:                                               ; preds = %61, %31
  %67 = load i32, i32* @ReplicationSlotControlLock, align 4
  %68 = load i32, i32* @LW_EXCLUSIVE, align 4
  %69 = call i32 @LWLockAcquire(i32 %67, i32 %68)
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  store i64 0, i64* %71, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  store i32 0, i32* %73, align 8
  %74 = load i32, i32* @ReplicationSlotControlLock, align 4
  %75 = call i32 @LWLockRelease(i32 %74)
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = call i32 @ConditionVariableBroadcast(i32* %77)
  %79 = call i32 @ReplicationSlotsComputeRequiredXmin(i32 0)
  %80 = call i32 (...) @ReplicationSlotsComputeRequiredLSN()
  %81 = call i32 @rmtree(i8* %13, i32 1)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %66
  %84 = load i32, i32* @WARNING, align 4
  %85 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %13)
  %86 = call i32 @ereport(i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %83, %66
  %88 = load i32, i32* @ReplicationSlotAllocationLock, align 4
  %89 = call i32 @LWLockRelease(i32 %88)
  %90 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %90)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @LWLockAcquire(i32, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local i8* @NameStr(i32) #2

declare dso_local i64 @rename(i8*, i8*) #2

declare dso_local i32 @START_CRIT_SECTION(...) #2

declare dso_local i32 @fsync_fname(i8*, i32) #2

declare dso_local i32 @END_CRIT_SECTION(...) #2

declare dso_local i32 @SpinLockAcquire(i32*) #2

declare dso_local i32 @SpinLockRelease(i32*) #2

declare dso_local i32 @ConditionVariableBroadcast(i32*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode_for_file_access(...) #2

declare dso_local i32 @errmsg(i8*, i8*, ...) #2

declare dso_local i32 @LWLockRelease(i32) #2

declare dso_local i32 @ReplicationSlotsComputeRequiredXmin(i32) #2

declare dso_local i32 @ReplicationSlotsComputeRequiredLSN(...) #2

declare dso_local i32 @rmtree(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
