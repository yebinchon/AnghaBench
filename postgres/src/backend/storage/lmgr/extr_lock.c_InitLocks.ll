; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lock.c_InitLocks.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lock.c_InitLocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i8*, i32 }

@NUM_LOCK_PARTITIONS = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"LOCK hash\00", align 1
@HASH_ELEM = common dso_local global i32 0, align 4
@HASH_BLOBS = common dso_local global i32 0, align 4
@HASH_PARTITION = common dso_local global i32 0, align 4
@LockMethodLockHash = common dso_local global i8* null, align 8
@proclock_hash = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"PROCLOCK hash\00", align 1
@HASH_FUNCTION = common dso_local global i32 0, align 4
@LockMethodProcLockHash = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"Fast Path Strong Relation Lock Data\00", align 1
@FastPathStrongRelationLocks = common dso_local global %struct.TYPE_8__* null, align 8
@LockMethodLocalHash = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"LOCALLOCK hash\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InitLocks() #0 {
  %1 = alloca %struct.TYPE_7__, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = call i64 (...) @NLOCKENTS()
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = sdiv i64 %6, 2
  store i64 %7, i64* %2, align 8
  %8 = call i32 @MemSet(%struct.TYPE_7__* %1, i32 0, i32 24)
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  store i32 4, i32* %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 1
  store i32 4, i32* %10, align 4
  %11 = load i8*, i8** @NUM_LOCK_PARTITIONS, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 2
  store i8* %11, i8** %12, align 8
  %13 = load i64, i64* %2, align 8
  %14 = load i64, i64* %3, align 8
  %15 = load i32, i32* @HASH_ELEM, align 4
  %16 = load i32, i32* @HASH_BLOBS, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @HASH_PARTITION, align 4
  %19 = or i32 %17, %18
  %20 = call i8* @ShmemInitHash(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %13, i64 %14, %struct.TYPE_7__* %1, i32 %19)
  store i8* %20, i8** @LockMethodLockHash, align 8
  %21 = load i64, i64* %3, align 8
  %22 = mul nsw i64 %21, 2
  store i64 %22, i64* %3, align 8
  %23 = load i64, i64* %2, align 8
  %24 = mul nsw i64 %23, 2
  store i64 %24, i64* %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  store i32 4, i32* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 1
  store i32 4, i32* %26, align 4
  %27 = load i32, i32* @proclock_hash, align 4
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 3
  store i32 %27, i32* %28, align 8
  %29 = load i8*, i8** @NUM_LOCK_PARTITIONS, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 2
  store i8* %29, i8** %30, align 8
  %31 = load i64, i64* %2, align 8
  %32 = load i64, i64* %3, align 8
  %33 = load i32, i32* @HASH_ELEM, align 4
  %34 = load i32, i32* @HASH_FUNCTION, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @HASH_PARTITION, align 4
  %37 = or i32 %35, %36
  %38 = call i8* @ShmemInitHash(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64 %31, i64 %32, %struct.TYPE_7__* %1, i32 %37)
  store i8* %38, i8** @LockMethodProcLockHash, align 8
  %39 = call %struct.TYPE_8__* @ShmemInitStruct(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 4, i32* %4)
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** @FastPathStrongRelationLocks, align 8
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** @FastPathStrongRelationLocks, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = call i32 @SpinLockInit(i32* %44)
  br label %46

46:                                               ; preds = %42, %0
  %47 = load i64, i64* @LockMethodLocalHash, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i64, i64* @LockMethodLocalHash, align 8
  %51 = call i32 @hash_destroy(i64 %50)
  br label %52

52:                                               ; preds = %49, %46
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  store i32 4, i32* %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 1
  store i32 4, i32* %54, align 4
  %55 = load i32, i32* @HASH_ELEM, align 4
  %56 = load i32, i32* @HASH_BLOBS, align 4
  %57 = or i32 %55, %56
  %58 = call i64 @hash_create(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 16, %struct.TYPE_7__* %1, i32 %57)
  store i64 %58, i64* @LockMethodLocalHash, align 8
  ret void
}

declare dso_local i64 @NLOCKENTS(...) #1

declare dso_local i32 @MemSet(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i8* @ShmemInitHash(i8*, i64, i64, %struct.TYPE_7__*, i32) #1

declare dso_local %struct.TYPE_8__* @ShmemInitStruct(i8*, i32, i32*) #1

declare dso_local i32 @SpinLockInit(i32*) #1

declare dso_local i32 @hash_destroy(i64) #1

declare dso_local i64 @hash_create(i8*, i32, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
