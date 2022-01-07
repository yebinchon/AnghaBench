; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lock.c_CleanUpLock.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lock.c_CleanUpLock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"CleanUpLock: deleting\00", align 1
@LockMethodProcLockHash = common dso_local global i32 0, align 4
@HASH_REMOVE = common dso_local global i32 0, align 4
@PANIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"proclock table corrupted\00", align 1
@LockMethodLockHash = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"lock table corrupted\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_8__*, i32, i32, i32)* @CleanUpLock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CleanUpLock(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %5
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %18 = call i32 @PROCLOCK_PRINT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %17)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 3
  %21 = call i32 @SHMQueueDelete(i32* %20)
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %24 = call i32 @SHMQueueDelete(i32* %23)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @ProcLockHashCode(i32* %26, i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* @LockMethodProcLockHash, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = bitcast i32* %31 to i8*
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @HASH_REMOVE, align 4
  %35 = call i32 @hash_search_with_hash_value(i32 %29, i8* %32, i32 %33, i32 %34, i32* null)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %16
  %38 = load i32, i32* @PANIC, align 4
  %39 = call i32 @elog(i32 %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %16
  br label %41

41:                                               ; preds = %40, %5
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %41
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %48 = call i32 @LOCK_PRINT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.TYPE_9__* %47, i32 0)
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 2
  %51 = call i32 @SHMQueueEmpty(i32* %50)
  %52 = call i32 @Assert(i32 %51)
  %53 = load i32, i32* @LockMethodLockHash, align 4
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = bitcast i32* %55 to i8*
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @HASH_REMOVE, align 4
  %59 = call i32 @hash_search_with_hash_value(i32 %53, i8* %56, i32 %57, i32 %58, i32* null)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %46
  %62 = load i32, i32* @PANIC, align 4
  %63 = call i32 @elog(i32 %62, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %46
  br label %73

65:                                               ; preds = %41
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %71 = call i32 @ProcLockWakeup(i32 %69, %struct.TYPE_9__* %70)
  br label %72

72:                                               ; preds = %68, %65
  br label %73

73:                                               ; preds = %72, %64
  ret void
}

declare dso_local i32 @PROCLOCK_PRINT(i8*, %struct.TYPE_8__*) #1

declare dso_local i32 @SHMQueueDelete(i32*) #1

declare dso_local i32 @ProcLockHashCode(i32*, i32) #1

declare dso_local i32 @hash_search_with_hash_value(i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @LOCK_PRINT(i8*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @SHMQueueEmpty(i32*) #1

declare dso_local i32 @ProcLockWakeup(i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
