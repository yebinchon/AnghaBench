; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lock.c_LockRefindAndRelease.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lock.c_LockRefindAndRelease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64*, i32 }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32*, i32* }

@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@LockMethodLockHash = common dso_local global i32 0, align 4
@HASH_FIND = common dso_local global i32 0, align 4
@PANIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to re-find shared lock object\00", align 1
@LockMethodProcLockHash = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"failed to re-find shared proclock object\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"lock_twophase_postcommit: WRONGTYPE\00", align 1
@WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"you don't own a lock of type %s\00", align 1
@FastPathStrongRelationLocks = common dso_local global %struct.TYPE_15__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i32*, i32*, i64, i32)* @LockRefindAndRelease to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LockRefindAndRelease(%struct.TYPE_14__* %0, i32* %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_12__, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %19 = load i32*, i32** %8, align 8
  %20 = call i64 @LockTagHashCode(i32* %19)
  store i64 %20, i64* %14, align 8
  %21 = load i64, i64* %14, align 8
  %22 = call i32* @LockHashPartitionLock(i64 %21)
  store i32* %22, i32** %16, align 8
  %23 = load i32*, i32** %16, align 8
  %24 = load i32, i32* @LW_EXCLUSIVE, align 4
  %25 = call i32 @LWLockAcquire(i32* %23, i32 %24)
  %26 = load i32, i32* @LockMethodLockHash, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = bitcast i32* %27 to i8*
  %29 = load i64, i64* %14, align 8
  %30 = load i32, i32* @HASH_FIND, align 4
  %31 = call i64 @hash_search_with_hash_value(i32 %26, i8* %28, i64 %29, i32 %30, i32* null)
  %32 = inttoptr i64 %31 to i32*
  store i32* %32, i32** %11, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %5
  %36 = load i32, i32* @PANIC, align 4
  %37 = call i32 (i32, i8*, ...) @elog(i32 %36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %5
  %39 = load i32*, i32** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  store i32* %39, i32** %40, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  store i32* %41, i32** %42, align 8
  %43 = load i64, i64* %14, align 8
  %44 = call i64 @ProcLockHashCode(%struct.TYPE_12__* %13, i64 %43)
  store i64 %44, i64* %15, align 8
  %45 = load i32, i32* @LockMethodProcLockHash, align 4
  %46 = bitcast %struct.TYPE_12__* %13 to i8*
  %47 = load i64, i64* %15, align 8
  %48 = load i32, i32* @HASH_FIND, align 4
  %49 = call i64 @hash_search_with_hash_value(i32 %45, i8* %46, i64 %47, i32 %48, i32* null)
  %50 = inttoptr i64 %49 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %50, %struct.TYPE_13__** %12, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %52 = icmp ne %struct.TYPE_13__* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %38
  %54 = load i32, i32* @PANIC, align 4
  %55 = call i32 (i32, i8*, ...) @elog(i32 %54, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %38
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @LOCKBIT_ON(i64 %60)
  %62 = and i32 %59, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %77, label %64

64:                                               ; preds = %56
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %66 = call i32 @PROCLOCK_PRINT(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_13__* %65)
  %67 = load i32*, i32** %16, align 8
  %68 = call i32 @LWLockRelease(i32* %67)
  %69 = load i32, i32* @WARNING, align 4
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* %9, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i32, i8*, ...) @elog(i32 %69, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  br label %123

77:                                               ; preds = %56
  %78 = load i32*, i32** %11, align 8
  %79 = load i64, i64* %9, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %82 = call i32 @UnGrantLock(i32* %78, i64 %79, %struct.TYPE_13__* %80, %struct.TYPE_14__* %81)
  store i32 %82, i32* %17, align 4
  %83 = load i32*, i32** %11, align 8
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %86 = load i64, i64* %14, align 8
  %87 = load i32, i32* %17, align 4
  %88 = call i32 @CleanUpLock(i32* %83, %struct.TYPE_13__* %84, %struct.TYPE_14__* %85, i64 %86, i32 %87)
  %89 = load i32*, i32** %16, align 8
  %90 = call i32 @LWLockRelease(i32* %89)
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %123

93:                                               ; preds = %77
  %94 = load i32*, i32** %8, align 8
  %95 = load i64, i64* %9, align 8
  %96 = call i64 @ConflictsWithRelationFastPath(i32* %94, i64 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %123

98:                                               ; preds = %93
  %99 = load i64, i64* %14, align 8
  %100 = call i64 @FastPathStrongLockHashPartition(i64 %99)
  store i64 %100, i64* %18, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** @FastPathStrongRelationLocks, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 1
  %103 = call i32 @SpinLockAcquire(i32* %102)
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** @FastPathStrongRelationLocks, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = load i64*, i64** %105, align 8
  %107 = load i64, i64* %18, align 8
  %108 = getelementptr inbounds i64, i64* %106, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = icmp sgt i64 %109, 0
  %111 = zext i1 %110 to i32
  %112 = call i32 @Assert(i32 %111)
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** @FastPathStrongRelationLocks, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  %115 = load i64*, i64** %114, align 8
  %116 = load i64, i64* %18, align 8
  %117 = getelementptr inbounds i64, i64* %115, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %118, -1
  store i64 %119, i64* %117, align 8
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** @FastPathStrongRelationLocks, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 1
  %122 = call i32 @SpinLockRelease(i32* %121)
  br label %123

123:                                              ; preds = %64, %98, %93, %77
  ret void
}

declare dso_local i64 @LockTagHashCode(i32*) #1

declare dso_local i32* @LockHashPartitionLock(i64) #1

declare dso_local i32 @LWLockAcquire(i32*, i32) #1

declare dso_local i64 @hash_search_with_hash_value(i32, i8*, i64, i32, i32*) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i64 @ProcLockHashCode(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @LOCKBIT_ON(i64) #1

declare dso_local i32 @PROCLOCK_PRINT(i8*, %struct.TYPE_13__*) #1

declare dso_local i32 @LWLockRelease(i32*) #1

declare dso_local i32 @UnGrantLock(i32*, i64, %struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i32 @CleanUpLock(i32*, %struct.TYPE_13__*, %struct.TYPE_14__*, i64, i32) #1

declare dso_local i64 @ConflictsWithRelationFastPath(i32*, i64) #1

declare dso_local i64 @FastPathStrongLockHashPartition(i64) #1

declare dso_local i32 @SpinLockAcquire(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @SpinLockRelease(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
