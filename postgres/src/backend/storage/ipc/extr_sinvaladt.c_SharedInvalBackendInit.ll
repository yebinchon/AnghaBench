; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_sinvaladt.c_SharedInvalBackendInit.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_sinvaladt.c_SharedInvalBackendInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }

@shmInvalBuffer = common dso_local global %struct.TYPE_6__* null, align 8
@SInvalWriteLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@InvalidBackendId = common dso_local global i32 0, align 4
@MyBackendId = common dso_local global i32 0, align 4
@FATAL = common dso_local global i32 0, align 4
@ERRCODE_TOO_MANY_CONNECTIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"sorry, too many clients already\00", align 1
@MyProc = common dso_local global %struct.TYPE_8__* null, align 8
@nextLocalTransactionId = common dso_local global i32 0, align 4
@MyProcPid = common dso_local global i64 0, align 8
@CleanupInvalidationState = common dso_local global i32 0, align 4
@DEBUG4 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"my backend ID is %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SharedInvalBackendInit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %2, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** @shmInvalBuffer, align 8
  store %struct.TYPE_6__* %6, %struct.TYPE_6__** %5, align 8
  %7 = load i32, i32* @SInvalWriteLock, align 4
  %8 = load i32, i32* @LW_EXCLUSIVE, align 4
  %9 = call i32 @LWLockAcquire(i32 %7, i32 %8)
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %34, %1
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %10
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %16
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i64 %31
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %4, align 8
  br label %37

33:                                               ; preds = %16
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %10

37:                                               ; preds = %26, %10
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = icmp eq %struct.TYPE_7__* %38, null
  br i1 %39, label %40, label %77

40:                                               ; preds = %37
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %67

48:                                               ; preds = %40
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i64 %55
  store %struct.TYPE_7__* %56, %struct.TYPE_7__** %4, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i32 @Assert(i32 %61)
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  br label %76

67:                                               ; preds = %40
  %68 = load i32, i32* @InvalidBackendId, align 4
  store i32 %68, i32* @MyBackendId, align 4
  %69 = load i32, i32* @SInvalWriteLock, align 4
  %70 = call i32 @LWLockRelease(i32 %69)
  %71 = load i32, i32* @FATAL, align 4
  %72 = load i32, i32* @ERRCODE_TOO_MANY_CONNECTIONS, align 4
  %73 = call i32 @errcode(i32 %72)
  %74 = call i32 @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %75 = call i32 @ereport(i32 %71, i32 %74)
  br label %76

76:                                               ; preds = %67, %48
  br label %77

77:                                               ; preds = %76, %37
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i64 0
  %83 = ptrtoint %struct.TYPE_7__* %78 to i64
  %84 = ptrtoint %struct.TYPE_7__* %82 to i64
  %85 = sub i64 %83, %84
  %86 = sdiv exact i64 %85, 48
  %87 = add nsw i64 %86, 1
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* @MyBackendId, align 4
  %89 = load i32, i32* @MyBackendId, align 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MyProc, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* @nextLocalTransactionId, align 4
  %95 = load i64, i64* @MyProcPid, align 8
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MyProc, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 6
  store %struct.TYPE_8__* %98, %struct.TYPE_8__** %100, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  store i32 0, i32* %107, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 2
  store i32 0, i32* %109, align 4
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 3
  store i32 0, i32* %111, align 8
  %112 = load i32, i32* %2, align 4
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 4
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* @SInvalWriteLock, align 4
  %116 = call i32 @LWLockRelease(i32 %115)
  %117 = load i32, i32* @CleanupInvalidationState, align 4
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %119 = call i32 @PointerGetDatum(%struct.TYPE_6__* %118)
  %120 = call i32 @on_shmem_exit(i32 %117, i32 %119)
  %121 = load i32, i32* @DEBUG4, align 4
  %122 = load i32, i32* @MyBackendId, align 4
  %123 = call i32 @elog(i32 %121, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %122)
  ret void
}

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @on_shmem_exit(i32, i32) #1

declare dso_local i32 @PointerGetDatum(%struct.TYPE_6__*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
