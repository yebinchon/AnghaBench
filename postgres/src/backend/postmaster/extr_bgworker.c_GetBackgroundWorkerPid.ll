; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_bgworker.c_GetBackgroundWorkerPid.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_bgworker.c_GetBackgroundWorkerPid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, i32 }
%struct.TYPE_6__ = type { i64, i64 }

@max_worker_processes = common dso_local global i64 0, align 8
@BackgroundWorkerData = common dso_local global %struct.TYPE_7__* null, align 8
@BackgroundWorkerLock = common dso_local global i32 0, align 4
@LW_SHARED = common dso_local global i32 0, align 4
@BGWH_STOPPED = common dso_local global i32 0, align 4
@InvalidPid = common dso_local global i64 0, align 8
@BGWH_NOT_YET_STARTED = common dso_local global i32 0, align 4
@BGWH_STARTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetBackgroundWorkerPid(%struct.TYPE_6__* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @max_worker_processes, align 8
  %12 = icmp ult i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @Assert(i32 %13)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** @BackgroundWorkerData, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i64 %20
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %6, align 8
  %22 = load i32, i32* @BackgroundWorkerLock, align 4
  %23 = load i32, i32* @LW_SHARED, align 4
  %24 = call i32 @LWLockAcquire(i32 %22, i32 %23)
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %2
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32, %2
  store i64 0, i64* %7, align 8
  br label %42

38:                                               ; preds = %32
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %7, align 8
  br label %42

42:                                               ; preds = %38, %37
  %43 = load i32, i32* @BackgroundWorkerLock, align 4
  %44 = call i32 @LWLockRelease(i32 %43)
  %45 = load i64, i64* %7, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @BGWH_STOPPED, align 4
  store i32 %48, i32* %3, align 4
  br label %60

49:                                               ; preds = %42
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* @InvalidPid, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @BGWH_NOT_YET_STARTED, align 4
  store i32 %54, i32* %3, align 4
  br label %60

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %7, align 8
  %58 = load i64*, i64** %5, align 8
  store i64 %57, i64* %58, align 8
  %59 = load i32, i32* @BGWH_STARTED, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %56, %53, %47
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
