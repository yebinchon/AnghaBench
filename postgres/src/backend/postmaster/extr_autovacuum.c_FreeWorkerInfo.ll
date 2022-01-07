; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_autovacuum.c_FreeWorkerInfo.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_autovacuum.c_FreeWorkerInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64, i64, i64, i64, i32*, i8*, i8* }
%struct.TYPE_4__ = type { i32*, i32, i32 }

@MyWorkerInfo = common dso_local global %struct.TYPE_3__* null, align 8
@AutovacuumLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@AutoVacuumShmem = common dso_local global %struct.TYPE_4__* null, align 8
@AutovacuumLauncherPid = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i8* null, align 8
@AutoVacRebalance = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @FreeWorkerInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FreeWorkerInfo(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** @MyWorkerInfo, align 8
  %6 = icmp ne %struct.TYPE_3__* %5, null
  br i1 %6, label %7, label %49

7:                                                ; preds = %2
  %8 = load i32, i32* @AutovacuumLock, align 4
  %9 = load i32, i32* @LW_EXCLUSIVE, align 4
  %10 = call i32 @LWLockAcquire(i32 %8, i32 %9)
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @AutoVacuumShmem, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* @AutovacuumLauncherPid, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @MyWorkerInfo, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  %16 = call i32 @dlist_delete(i32* %15)
  %17 = load i8*, i8** @InvalidOid, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @MyWorkerInfo, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 9
  store i8* %17, i8** %19, align 8
  %20 = load i8*, i8** @InvalidOid, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @MyWorkerInfo, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 8
  store i8* %20, i8** %22, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @MyWorkerInfo, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @MyWorkerInfo, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 7
  store i32* null, i32** %26, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @MyWorkerInfo, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 6
  store i64 0, i64* %28, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @MyWorkerInfo, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i32 0, i32* %30, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @MyWorkerInfo, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 5
  store i64 0, i64* %32, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @MyWorkerInfo, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 4
  store i64 0, i64* %34, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @MyWorkerInfo, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  store i64 0, i64* %36, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @AutoVacuumShmem, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @MyWorkerInfo, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = call i32 @dlist_push_head(i32* %38, i32* %40)
  store %struct.TYPE_3__* null, %struct.TYPE_3__** @MyWorkerInfo, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @AutoVacuumShmem, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @AutoVacRebalance, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32 1, i32* %46, align 4
  %47 = load i32, i32* @AutovacuumLock, align 4
  %48 = call i32 @LWLockRelease(i32 %47)
  br label %49

49:                                               ; preds = %7, %2
  ret void
}

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @dlist_delete(i32*) #1

declare dso_local i32 @dlist_push_head(i32*, i32*) #1

declare dso_local i32 @LWLockRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
