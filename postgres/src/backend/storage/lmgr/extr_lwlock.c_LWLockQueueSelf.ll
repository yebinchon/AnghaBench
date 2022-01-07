; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lwlock.c_LWLockQueueSelf.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lwlock.c_LWLockQueueSelf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@MyProc = common dso_local global %struct.TYPE_7__* null, align 8
@PANIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"cannot wait without a PGPROC structure\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"queueing for lock while waiting on another one\00", align 1
@LW_FLAG_HAS_WAITERS = common dso_local global i32 0, align 4
@LW_WAIT_UNTIL_FREE = common dso_local global i64 0, align 8
@lwWaitLink = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i64)* @LWLockQueueSelf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LWLockQueueSelf(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** @MyProc, align 8
  %6 = icmp eq %struct.TYPE_7__* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i32, i32* @PANIC, align 4
  %9 = call i32 @elog(i32 %8, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %7, %2
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** @MyProc, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i32, i32* @PANIC, align 4
  %17 = call i32 @elog(i32 %16, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %10
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = call i32 @LWLockWaitListLock(%struct.TYPE_6__* %19)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = load i32, i32* @LW_FLAG_HAS_WAITERS, align 4
  %24 = call i32 @pg_atomic_fetch_or_u32(i32* %22, i32 %23)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** @MyProc, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load i64, i64* %4, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** @MyProc, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  store i64 %27, i64* %29, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @LW_WAIT_UNTIL_FREE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %18
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** @MyProc, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @lwWaitLink, align 4
  %40 = call i32 @proclist_push_head(i32* %35, i32 %38, i32 %39)
  br label %49

41:                                               ; preds = %18
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** @MyProc, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @lwWaitLink, align 4
  %48 = call i32 @proclist_push_tail(i32* %43, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %41, %33
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %51 = call i32 @LWLockWaitListUnlock(%struct.TYPE_6__* %50)
  ret void
}

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @LWLockWaitListLock(%struct.TYPE_6__*) #1

declare dso_local i32 @pg_atomic_fetch_or_u32(i32*, i32) #1

declare dso_local i32 @proclist_push_head(i32*, i32, i32) #1

declare dso_local i32 @proclist_push_tail(i32*, i32, i32) #1

declare dso_local i32 @LWLockWaitListUnlock(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
