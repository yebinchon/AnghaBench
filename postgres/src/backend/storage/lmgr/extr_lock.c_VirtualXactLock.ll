; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lock.c_VirtualXactLock.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lock.c_VirtualXactLock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_15__ = type { i64, i64, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@LockMethods = common dso_local global i32* null, align 8
@DEFAULT_LOCKMETHOD = common dso_local global i64 0, align 8
@ExclusiveLock = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"out of shared memory\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"You might need to increase max_locks_per_transaction.\00", align 1
@ShareLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @VirtualXactLock(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = bitcast %struct.TYPE_13__* %5 to { i64, i64 }*
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 0
  store i64 %0, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 1
  store i64 %1, i64* %14, align 8
  store i32 %2, i32* %6, align 4
  %15 = bitcast %struct.TYPE_13__* %5 to { i64, i64 }*
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @VirtualTransactionIdIsValid(i64 %17, i64 %19)
  %21 = call i32 @Assert(i32 %20)
  %22 = load i32, i32* %7, align 4
  %23 = bitcast %struct.TYPE_13__* %5 to { i64, i64 }*
  %24 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %23, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @SET_LOCKTAG_VIRTUALTRANSACTION(i32 %22, i64 %25, i64 %27)
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call %struct.TYPE_15__* @BackendIdGetProc(i64 %30)
  store %struct.TYPE_15__* %31, %struct.TYPE_15__** %8, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %33 = icmp eq %struct.TYPE_15__* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %118

35:                                               ; preds = %3
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 3
  %38 = load i32, i32* @LW_EXCLUSIVE, align 4
  %39 = call i32 @LWLockAcquire(i32* %37, i32 %38)
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %42, %44
  br i1 %45, label %53, label %46

46:                                               ; preds = %35
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %49, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %46, %35
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 3
  %56 = call i32 @LWLockRelease(i32* %55)
  store i32 1, i32* %4, align 4
  br label %118

57:                                               ; preds = %46
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 3
  %63 = call i32 @LWLockRelease(i32* %62)
  store i32 0, i32* %4, align 4
  br label %118

64:                                               ; preds = %57
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %110

69:                                               ; preds = %64
  %70 = call i32 @LockTagHashCode(i32* %7)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32* @LockHashPartitionLock(i32 %71)
  store i32* %72, i32** %11, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = load i32, i32* @LW_EXCLUSIVE, align 4
  %75 = call i32 @LWLockAcquire(i32* %73, i32 %74)
  %76 = load i32*, i32** @LockMethods, align 8
  %77 = load i64, i64* @DEFAULT_LOCKMETHOD, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @ExclusiveLock, align 4
  %83 = call %struct.TYPE_14__* @SetupLockInTable(i32 %79, %struct.TYPE_15__* %80, i32* %7, i32 %81, i32 %82)
  store %struct.TYPE_14__* %83, %struct.TYPE_14__** %9, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %85 = icmp ne %struct.TYPE_14__* %84, null
  br i1 %85, label %98, label %86

86:                                               ; preds = %69
  %87 = load i32*, i32** %11, align 8
  %88 = call i32 @LWLockRelease(i32* %87)
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 3
  %91 = call i32 @LWLockRelease(i32* %90)
  %92 = load i32, i32* @ERROR, align 4
  %93 = load i32, i32* @ERRCODE_OUT_OF_MEMORY, align 4
  %94 = call i32 @errcode(i32 %93)
  %95 = call i32 @errmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %96 = call i32 @errhint(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %97 = call i32 @ereport(i32 %92, i32 %96)
  br label %98

98:                                               ; preds = %86, %69
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %104 = load i32, i32* @ExclusiveLock, align 4
  %105 = call i32 @GrantLock(i32 %102, %struct.TYPE_14__* %103, i32 %104)
  %106 = load i32*, i32** %11, align 8
  %107 = call i32 @LWLockRelease(i32* %106)
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 2
  store i32 0, i32* %109, align 8
  br label %110

110:                                              ; preds = %98, %64
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 3
  %113 = call i32 @LWLockRelease(i32* %112)
  %114 = load i32, i32* @ShareLock, align 4
  %115 = call i32 @LockAcquire(i32* %7, i32 %114, i32 0, i32 0)
  %116 = load i32, i32* @ShareLock, align 4
  %117 = call i32 @LockRelease(i32* %7, i32 %116, i32 0)
  store i32 1, i32* %4, align 4
  br label %118

118:                                              ; preds = %110, %60, %53, %34
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @VirtualTransactionIdIsValid(i64, i64) #1

declare dso_local i32 @SET_LOCKTAG_VIRTUALTRANSACTION(i32, i64, i64) #1

declare dso_local %struct.TYPE_15__* @BackendIdGetProc(i64) #1

declare dso_local i32 @LWLockAcquire(i32*, i32) #1

declare dso_local i32 @LWLockRelease(i32*) #1

declare dso_local i32 @LockTagHashCode(i32*) #1

declare dso_local i32* @LockHashPartitionLock(i32) #1

declare dso_local %struct.TYPE_14__* @SetupLockInTable(i32, %struct.TYPE_15__*, i32*, i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @GrantLock(i32, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @LockAcquire(i32*, i32, i32, i32) #1

declare dso_local i32 @LockRelease(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
