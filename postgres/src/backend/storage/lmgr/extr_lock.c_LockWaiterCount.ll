; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lock.c_LockWaiterCount.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lock.c_LockWaiterCount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@LockMethods = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unrecognized lock method: %d\00", align 1
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@LockMethodLockHash = common dso_local global i32 0, align 4
@HASH_FIND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LockWaiterCount(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %3, align 8
  store i32 0, i32* %8, align 4
  %12 = load i64, i64* %3, align 8
  %13 = icmp sle i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load i64, i64* %3, align 8
  %16 = load i32, i32* @LockMethods, align 4
  %17 = call i64 @lengthof(i32 %16)
  %18 = icmp sge i64 %15, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %14, %1
  %20 = load i32, i32* @ERROR, align 4
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @elog(i32 %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %21)
  br label %23

23:                                               ; preds = %19, %14
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = call i32 @LockTagHashCode(%struct.TYPE_5__* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32* @LockHashPartitionLock(i32 %26)
  store i32* %27, i32** %7, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* @LW_EXCLUSIVE, align 4
  %30 = call i32 @LWLockAcquire(i32* %28, i32 %29)
  %31 = load i32, i32* @LockMethodLockHash, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %33 = bitcast %struct.TYPE_5__* %32 to i8*
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @HASH_FIND, align 4
  %36 = call i64 @hash_search_with_hash_value(i32 %31, i8* %33, i32 %34, i32 %35, i32* %5)
  %37 = inttoptr i64 %36 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %23
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = icmp ne %struct.TYPE_6__* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i32 @Assert(i32 %43)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %40, %23
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @LWLockRelease(i32* %49)
  %51 = load i32, i32* %8, align 4
  ret i32 %51
}

declare dso_local i64 @lengthof(i32) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i32 @LockTagHashCode(%struct.TYPE_5__*) #1

declare dso_local i32* @LockHashPartitionLock(i32) #1

declare dso_local i32 @LWLockAcquire(i32*, i32) #1

declare dso_local i64 @hash_search_with_hash_value(i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @LWLockRelease(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
